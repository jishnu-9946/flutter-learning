import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/transaction.dart';
import 'package:intl/intl.dart';

import 'chart_bar.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction;
  const Chart(this.recentTransaction);

  List<Map<String, Object>> get groupedTansactionListValues {
    return List.generate(7, (index) {
      final weekday = DateTime.now().subtract(Duration(days: index));
      double total = 0.0;
      for (var i = 0; i < recentTransaction.length; i++) {
        if (weekday.day == recentTransaction[i].date.day &&
            weekday.month == recentTransaction[i].date.month &&
            weekday.year == recentTransaction[i].date.year)
          total += recentTransaction[i].amount;
      }
      // print(DateFormat.E().format(weekday));
      // print(total.toString());
      return {'day': DateFormat.E().format(weekday), 'amount': total};
    });
  }

  double get totalTranscrions {
    return groupedTansactionListValues.fold(
        0.0, (sum, item) => sum + item['amount']);
  }

  @override
  Widget build(BuildContext context) {
    // print(groupedTansactionListValues);

    return Card(
      elevation: 5,
      margin: EdgeInsets.only(left: 10,right: 20,top: 10),
      child: Row(
        children: groupedTansactionListValues.map((data) {
         return Flexible( 
            fit: FlexFit.tight, 
            child: ChartBar(
              chartday: data['day'],
              chartDaySpend: data['amount'],  
              ChartSpendPerc: totalTranscrions == 0.0
                  ? 0.0
                  : (data['amount'] as double) / totalTranscrions,
            ),
          );
        }).toList(),
      ),
    );
  }
}
