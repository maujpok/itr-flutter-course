import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page by Facu Pineda'),
        backgroundColor: Colors.lightBlue,
        //statusBarColor:  Color.fromARGB(255, 14, 53, 100),
      ),

      body: const Text("Bienvenido")
    );
  }
}
