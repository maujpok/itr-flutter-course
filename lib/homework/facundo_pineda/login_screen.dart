import 'package:flutter/material.dart';
import 'package:itr_course_app/homework/facundo_pineda/building_screen.dart';
import 'package:itr_course_app/homework/facundo_pineda/welcome_screen.dart';

class LoginScreenFacu extends StatefulWidget {
  const LoginScreenFacu({super.key});

  @override
  State<LoginScreenFacu> createState() => _LoginScreenFacuState();
}

class _LoginScreenFacuState extends State<LoginScreenFacu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page by Facu Pineda'),
        backgroundColor: Colors.lightBlue,
        //statusBarColor:  Color.fromARGB(255, 14, 53, 100),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          height: 70,
          child: Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BuildingScreen()),
                );
              },
              child: const Text('New User? Create Account', style: TextStyle(color: Colors.lightBlue, fontSize: 20)),
            ),
          )),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
              child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 250, // set this
                child: Column(children: [Image.network('https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png')]),
              ),
            ],
          )),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10),
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(width: 1)), hintText: 'Email'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(width: 1)), hintText: 'Password'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BuildingScreen()),
                  );
                },
                child: const Text('Forgot Password', style: TextStyle(color: Colors.lightBlue, fontSize: 20)),
              ),
              ElevatedButton(
                  // Within the `FirstRoute` widget
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // <-- Radius
                      ),
                      backgroundColor: Colors.lightBlue,
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  )),
            ]),
          )
        ],
      ),
    );
  }
}
