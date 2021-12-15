import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stack = context.router.stack;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: ListView.builder(
        itemCount: stack.length,
        itemBuilder: (context, index) {
          final entry = stack[index];
          return ListTile(
            title: Text(entry.toString()),
          );
        },
      ),
    );
  }
}
