import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 2),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '\$${transaction.amount}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                          fontSize: 20),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        DateFormat.yMMMd().format(transaction.date),
                      )
                    ],
                  )
                ]),
              );
            }).toList())
          ],
        ),
      ),
    );
  }
}
