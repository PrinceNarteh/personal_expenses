import 'package:flutter/material.dart';

import './widgets/chart.dart';
import './widgets/user_transaction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Expenses"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Chart(),
              UserTransaction(),
            ],
          ),
        ),
      ),
    );
  }
}
