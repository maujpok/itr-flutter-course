import 'package:flutter/material.dart';
import 'package:itr_course_app/homework/facundo_pineda/user_class.dart';

class WelcomeScreen extends StatefulWidget {
  final UserFacu user;
  const WelcomeScreen({super.key, required this.user});
  //SecondScreen({Key key, @required this.text}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState(user);
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final UserFacu user;

  _WelcomeScreenState(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home de ${user.name}'),
          backgroundColor: Colors.lightBlue,
          //statusBarColor:  Color.fromARGB(255, 14, 53, 100),
        ),
        body: const Text("Bienvenido"));
  }
}
