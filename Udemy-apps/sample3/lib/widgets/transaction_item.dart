import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class transaction_item extends StatelessWidget {
  const transaction_item({
    Key key,
    @required this.transaction,
    @required Function deleteTransaction, this.index,
  }) : _deleteTransaction = deleteTransaction, super(key: key);

  final Transaction transaction;
  final Function _deleteTransaction;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: EdgeInsets.all(6),
            child: FittedBox(
              child: Text('\$${transaction.amount}'),
            ),
          ),
        ),
        title: Text(
          transaction.title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(transaction.date),
        ),
        trailing: MediaQuery.of(context).size.width>=460?TextButton.icon(
          label: Text("Delete"),
           icon: Icon(Icons.delete),
          onPressed: () =>
              {_deleteTransaction(transaction.id)},
        ) :IconButton(
          icon: Icon(Icons.delete),
          color: Theme.of(context).errorColor,
          onPressed: () =>
              {_deleteTransaction(transaction.id)},
        ),
      ),
    );
  }
}
