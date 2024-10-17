import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Screen'),
      ),
      body: const Center(
        child: Text(
          'This is the task screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
