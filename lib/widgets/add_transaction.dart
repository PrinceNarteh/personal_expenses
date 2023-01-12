import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  final Function addTransaction;
  const AddTransaction(this.addTransaction, {super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void onSubmit() {
    final title = titleController.text;
    final amount = double.parse(amountController.text);

    if (title.isEmpty || amount <= 0) return;

    widget.addTransaction(title, amount);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Amount"),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => onSubmit(),
            ),
            TextButton(
              onPressed: () => onSubmit(),
              child: const Text("+ Add Transaction"),
            )
          ],
        ),
      ),
    );
  }
}
