import 'package:flutter/material.dart';
import 'package:personal_expenses/models/transaction.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Transaction> transactions = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Expenses"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 50,
              child: Card(
                child: Text("Chart"),
              ),
            ),
            Column(
                children: transactions.map((transaction) {
              return Card(
                child: Text(
                  transaction.title,
                ),
              );
            }).toList())
          ],
        ),
      ),
    );
  }
}
