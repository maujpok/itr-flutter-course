import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itr_course_app/homework/facundo_pineda/main.dart';
import 'package:itr_course_app/homework/facundo_pineda/ui/bloc/home_bloc.dart';
import 'package:itr_course_app/homework/facundo_pineda/ui/home_screen.dart';
class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<HomeBloc>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFFFFF)),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
