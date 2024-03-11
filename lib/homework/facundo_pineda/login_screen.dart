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
          Padding(
            padding: const EdgeInsets.only(right:10.0,left:10),
            child: Column(
              children:[
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    hintText: 'Email'),
                ),
                const SizedBox( height: 10, ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    hintText: 'Password'),
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
            ),
          )
        ],
      ),
    );
  }
}
