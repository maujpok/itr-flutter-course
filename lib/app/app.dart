import 'package:flutter/material.dart';
import 'package:itr_course_app/homework/luis_carrillo/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFFFFF)),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
