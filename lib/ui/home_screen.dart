import 'package:flutter/material.dart';
import 'package:itr_course_app/homework/Andres_Conde/login_screen.dart';
import 'package:itr_course_app/homework/facundo_pineda/login_screen.dart';
import 'package:itr_course_app/homework/fazzari_branimir/login_screen.dart';
import 'package:itr_course_app/homework/fernando_villegas/login_screen.dart';
import 'package:itr_course_app/homework/luis_carrillo/login_screen.dart';
import 'package:itr_course_app/homework/nicolas_vidable/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ITR Flutter'),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView.builder(
          itemCount: items.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => items[index].loginWidget,
                  ),
                );
              },
              child: Text(items[index].name),
            ),
          ),
        ));
  }
}

final items = <StudentLogins>[
  StudentLogins(name: 'Luis', loginWidget: const LoginScreenLuis()),
  StudentLogins(name: 'Andres', loginWidget: const LoginScreenAndres()),
  StudentLogins(name: 'Branimir', loginWidget: const LoginScreenBranimir()),
  StudentLogins(name: 'Facundo', loginWidget: const LoginScreenFacu()),
  StudentLogins(name: 'Fernando', loginWidget: const LoginScreenFernando()),
  StudentLogins(name: 'Nico', loginWidget: const LoginScreenNico()),
];

class StudentLogins {
  final String name;
  final Widget loginWidget;

  StudentLogins({required this.name, required this.loginWidget});
}
