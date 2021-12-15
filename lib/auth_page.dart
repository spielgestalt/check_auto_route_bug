import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  final Function() onLogin;
  const AuthPage({Key? key, required this.onLogin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            onLogin();
          },
          child: const Text('login'),
        ),
      ),
    );
  }
}
