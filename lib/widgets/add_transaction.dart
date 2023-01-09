import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  AddTransaction({super.key});

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Title"),
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                print(titleController);
                print(amountController);
              },
              child: const Text("+ Add Transaction"),
            )
          ],
        ),
      ),
    );
  }
}
