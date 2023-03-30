import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/chart.dart';
import 'package:flutter_complete_guide/widgets/new_transaction.dart';
import 'package:flutter_complete_guide/widgets/transaction_list.dart';

import 'models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepPurpleAccent,
          fontFamily: "OpenSans",
          textTheme: TextTheme(
            titleSmall: TextStyle(
                fontFamily: "QuickSand",
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.purpleAccent),
            titleMedium: TextStyle(
              fontFamily: "OpenSans",
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(190, 155, 39, 176),
            ),
          ),
          appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(
                  fontFamily: "QuickSand",
                  fontSize: 20,
                  fontWeight: FontWeight.w300))),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // String titleInput;
  final titleController = TextEditingController();
  bool _showchart=true;
  final amountController = TextEditingController();
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now().subtract(Duration(days: 5)),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now().subtract(Duration(days: 4)),
    ),
    Transaction(
      id: 't3',
      title: 'Gas',
      amount: 35.50,
      date: DateTime.now().subtract(Duration(days: 3)),
    ),
    Transaction(
      id: 't4',
      title: 'Movie Tickets',
      amount: 22.00,
      date: DateTime.now().subtract(Duration(days: 3, hours: 6)),
    ),
    Transaction(
      id: 't5',
      title: 'Restaurant',
      amount: 45.90,
      date: DateTime.now().subtract(Duration(days: 2, hours: 12)),
    ),
    Transaction(
      id: 't6',
      title: 'Clothes',
      amount: 78.00,
      date: DateTime.now().subtract(Duration(days: 2, hours: 4)),
    ),
    Transaction(
      id: 't7',
      title: 'Coffee',
      amount: 4.50,
      date: DateTime.now().subtract(Duration(days: 1, hours: 10)),
    ),
    Transaction(
      id: 't8',
      title: 'Books',
      amount: 53.20,
      date: DateTime.now().subtract(Duration(days: 1, hours: 3)),
    ),
    Transaction(
      id: 't9',
      title: 'Gift',
      amount: 30.00,
      date: DateTime.now().subtract(Duration(days: 0, hours: 15)),
    ),
    Transaction(
      id: 't10',
      title: 'Gym Membership',
      amount: 65.00,
      date: DateTime.now().subtract(Duration(days: 0, hours: 7)),
    ),
    Transaction(
      id: 't11',
      title: 'Office Supplies',
      amount: 19.99,
      date: DateTime.now().subtract(Duration(days: 6)),
    ),
    Transaction(
      id: 't12',
      title: 'Phone Bill',
      amount: 75.00,
      date: DateTime.now().subtract(Duration(days: 6, hours: 8)),
    ),
    Transaction(
      id: 't13',
      title: 'Dinner with Friends',
      amount: 120.00,
      date: DateTime.now().subtract(Duration(days: 5, hours: 5)),
    ),
    Transaction(
      id: 't14',
      title: 'Gasoline',
      amount: 40.00,
      date: DateTime.now().subtract(Duration(days: 5, hours: 2)),
    ),
    Transaction(
      id: 't15',
      title: 'Concert Tickets',
      amount: 90.00,
      date: DateTime.now().subtract(Duration(days: 4, hours: 11)),
    ),
    Transaction(
      id: 't16',
      title: 'Car Wash',
      amount: 12.50,
      date: DateTime.now().subtract(Duration(days: 4, hours: 3)),
    ),
    Transaction(
      id: 't17',
      title: 'Gym Clothes',
      amount: 55.00,
      date: DateTime.now().subtract(Duration(days: 3, hours: 9)),
    ),
    Transaction(
      id: 't18',
      title: 'Lunch with Coworkers',
      amount: 25.00,
      date: DateTime.now().subtract(Duration(days: 3, hours: 1)),
    ),
    Transaction(
      id: 't19',
      title: 'Online Subscription',
      amount: 8.99,
      date: DateTime.now().subtract(Duration(days: 2, hours: 6)),
    ),
    Transaction(
      id: 't20',
      title: 'Snacks',
      amount: 7.25,
      date: DateTime.now().subtract(Duration(days: 2, hours: 2)),
    ),
    Transaction(
      id: 't21',
      title: 'Movie Rental',
      amount: 3.99,
      date: DateTime.now().subtract(Duration(days: 1, hours: 7)),
    ),
    Transaction(
      id: 't22',
      title: 'Haircut',
      amount: 35.00,
      date: DateTime.now().subtract(Duration(days: 1, hours: 2)),
    ),
    Transaction(
      id: 't23',
      title: 'Groceries',
      amount: 50.00,
      date: DateTime.now().subtract(Duration(days: 0, hours: 12)),
    ),
    Transaction(
      id: 't24',
      title: 'Public Transportation',
      amount: 10.00,
      date: DateTime.now().subtract(Duration(days: 0, hours: 6)),
    ),
    Transaction(
      id: 't25',
      title: 'Online Purchase',
      amount: 110.00,
      date: DateTime.now().subtract(Duration(days: 0, hours: 3)),
    ),
    Transaction(
      id: 't26',
      title: 'Snacks',
      amount: 4.50,
      date: DateTime.now().subtract(Duration(days: 0, hours: 1)),
    ),
  ];
  List<Transaction> get _recentTransactions {
    return _userTransactions.where((element) {
      return element.date.isAfter(DateTime.now().subtract(Duration(days: 7)));
    }).toList();
  }

  void _deleteTransaction(String id) {
    setState(() {
      _userTransactions.removeWhere((tx) => tx.id == id);
    });
  }

  void _addNewTransaction(
      String txTitle, double txAmount, DateTime chosenDate) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: chosenDate,
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void showNewTransactionForm(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return NewTransaction(_addNewTransaction);
      },
    );
  }

  bool _switchShowChart() {}

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final appbar = AppBar( 
      title: Text('Flutter App'),
      actions: [
        IconButton(
            onPressed: () => showNewTransactionForm(context),
            icon: Icon(Icons.add))
      ],
    );

    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.blueGrey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              if (isLandscape)
                Row(
                  children: [
                    Text("Show Chart"),
                    Switch(
                      value: _showchart,
                      onChanged: (value) {
                        setState(() {
                          _showchart = value;
                        });
                      },
                    ),
                  ],
                ),
              if (_recentTransactions.length > 0 && _showchart && isLandscape)
                Container(
                  height: (MediaQuery.of(context).size.height -
                          appbar.preferredSize.height -
                          MediaQuery.of(context).padding.top) *
                      0.7,
                  child: Chart(_recentTransactions),
                ),
                if (_recentTransactions.length > 0 &&  !isLandscape)
                Container(
                  height: (MediaQuery.of(context).size.height -
                          appbar.preferredSize.height -
                          MediaQuery.of(context).padding.top) *
                      0.3,
                  child: Chart(_recentTransactions),
                ),
              SizedBox(
                height: 2,
              ),
              Container(
                height: (MediaQuery.of(context).size.height -
                        appbar.preferredSize.height -
                        20 -
                        MediaQuery.of(context).padding.top) *
                    0.7,
                child: TransactionList(_userTransactions, _deleteTransaction),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => showNewTransactionForm(context),
      ),
    );
  }
}
