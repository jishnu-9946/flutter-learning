import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';
import 'transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function _deleteTransaction;
  TransactionList(this.transactions, this._deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return transactions.length <= 0
        ? Container(
            width: double.infinity,
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  child: Image.asset(
                    "assets/images/sleep.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  "No transactions",
                  // style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            ),
          )
        : ListView.builder(
          itemBuilder: (context, index) {
            return transaction_item(transaction: transactions[index], deleteTransaction: _deleteTransaction);
          },
          itemCount: transactions.length,
        );
  }
}

