import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itr_course_app/homework/nicolas_vidable/home_screen.dart';

class LoginScreenNico extends StatefulWidget {
  const LoginScreenNico({super.key});

  @override
  State<LoginScreenNico> createState() => _LoginScreenNicoState();
}

class _LoginScreenNicoState extends State<LoginScreenNico> {
  
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 14, 53, 100),
        ),
        backgroundColor: const Color.fromARGB(251, 59, 126, 226),
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: Container()),
                Container(
                  height: 150,
                  margin: const EdgeInsets.only(left: 25, right: 25, bottom: 40),
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(emailController.text);
                      if(emailValid && passwordController.text.isNotEmpty) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreenNico()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Email y/o password incorrectos!')),
                        );
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 24, 40, 189)),
                        foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 62, 62, 63)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)), side: BorderSide(color: Color.fromARGB(255, 43, 46, 223))))),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: const Text(
                    'New User? Create Account',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
