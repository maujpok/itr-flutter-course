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
        title: const Text('Login Page by Facu Pineda'),
        backgroundColor: Colors.lightBlue,
        //statusBarColor:  Color.fromARGB(255, 14, 53, 100),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child:Row(
            mainAxisSize: MainAxisSize.min,
            children:[
              SizedBox(
                width: 250, // set this
                child: Column(
                  children:[Image.network('https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png')]
                ),
              ),
            ],
            )
          ),
          const SizedBox( height: 30, ),
          Column(
            children:[
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
            ]
          )
        ],
      ),
    );
  }
}
