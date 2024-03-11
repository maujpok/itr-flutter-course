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
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          key: UniqueKey(),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Image.network(
                'https://www.alisco-it.com/wp-content/uploads/2022/01/Flutter_Featured_Logo.png',
                width: 200,
                height: 150,
              ),
            ),
            TextFormField(
              key: UniqueKey(),
              decoration: const InputDecoration(
                  hintText: 'Email', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 5),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Password', border: OutlineInputBorder()),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Forgot Password',
                  style: TextStyle(color: Colors.blue)),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(200, 40)),
              child: const Text('Login', style: TextStyle(color: Colors.white)),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {},
                style: const ButtonStyle(alignment: Alignment.bottomCenter),
                child: const Text('New User? Create Account',
                    style: TextStyle(color: Colors.blue)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
