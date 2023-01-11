import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  const TransactionList({required this.transactions, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: ((context, index) => Card(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.teal, width: 2),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '\$${transactions[index].amount.toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                          fontSize: 20),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactions[index].title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        DateFormat.yMMMd().format(transactions[index].date),
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
