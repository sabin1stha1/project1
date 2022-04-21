import 'package:expense_manager_flutter/models/models.dart';
import 'package:expense_manager_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transactions;
  final Function _deleteTransaction;

  const TransactionList({Key? key, required List<Transaction> transactions, required Function deleteTransaction})
      : _transactions = transactions,
        _deleteTransaction = deleteTransaction, super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index == _transactions.length) {
          return SizedBox(height: 75.0);
        }
        if (index != 0 && index % 3 == 0 && _transactions.length > 4) {
          return Column(
            children: [
              TransactionItem(
                  transaction: _transactions[index],
                  deleteTransaction: _deleteTransaction),
              // BannerAdWidget(),
            ],
          );
        }
        return TransactionItem(
            transaction: _transactions[index],
            deleteTransaction: _deleteTransaction);
      },
      itemCount: _transactions.length + 1,
    );
  }
}
