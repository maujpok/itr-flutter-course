import 'package:flutter/material.dart';
import 'package:itr_course_app/ui/default_screen.dart';
import 'package:itr_course_app/homework/Andres_Conde/home_screen.dart';

class LoginScreenAndres extends StatefulWidget {
  const LoginScreenAndres({super.key});

  @override
  State<LoginScreenAndres> createState() => _LoginScreenAndresState();
}

class _LoginScreenAndresState extends State<LoginScreenAndres> {
  final _formkey = GlobalKey<FormState>();
  final RegExp emailRegExp = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    caseSensitive: false,
    multiLine: false,
  );
  final RegExp passwordRegExp = RegExp(
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[.!@#\$%&/()=]).{6,}$',
  );

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
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
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
                validator: (value) {
                  if (value!.isEmpty || !emailRegExp.hasMatch(value)) {
                    return "Enter a valid email";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    hintText: 'Email', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 5),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                    errorMaxLines: 5),
                validator: (value) {
                  if (value!.isEmpty || !passwordRegExp.hasMatch(value)) {
                    return 'Password must contain at least 6 characters, one uppercase letter, one lowercase letter, one number, and one special character(.@#' +
                        '\$' +
                        '%&/()=).';
                  } else {
                    return null;
                  }
                },
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Forgot Password',
                    style: TextStyle(color: Colors.blue)),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(200, 40)),
                child:
                    const Text('Login', style: TextStyle(color: Colors.white)),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('New User?', textAlign: TextAlign.end),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Create Account',
                            style: TextStyle(color: Colors.blue)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
