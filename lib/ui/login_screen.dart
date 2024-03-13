import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Column(
        children: [
          Image.network('https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png'),
          TextFormField(
            decoration: const InputDecoration(hintText: 'Email'),
          ),
          TextFormField(
            decoration: const InputDecoration(hintText: 'Password'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Forgot Password'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
          ),
          const Text('New User? Create Account')
        ],
      ),
    );
  }
}
