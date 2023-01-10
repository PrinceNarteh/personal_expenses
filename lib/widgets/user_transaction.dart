import 'package:flutter/material.dart';

import './add_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 'T1',
      title: 'New Shoes',
      amount: 79.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T1',
      title: 'Weekly Groceries',
      amount: 17.99,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String title, double amount) {
    final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddTransaction(_addNewTransaction),
        TransactionList(
          transactions: _transactions,
        ),
      ],
    );
  }
}
