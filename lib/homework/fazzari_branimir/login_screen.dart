import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itr_course_app/homework/fazzari_branimir/shared/generic_input.dart';

class LoginScreenBranimir extends StatefulWidget {
  const LoginScreenBranimir({super.key});

  @override
  State<LoginScreenBranimir> createState() => _LoginScreenBranimirState();
}

class _LoginScreenBranimirState extends State<LoginScreenBranimir> {
  final TextStyle blueText = const TextStyle(color: Colors.blue);
  String emailValue = '';
  String passwordValue = '';
  bool canLogin = false;

  void _toggleButton() {
    setState(() {
      if (emailValue.isNotEmpty && passwordValue.isNotEmpty) {
        canLogin = true;
        return;
      }
      canLogin = false; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(255, 24, 106, 173),
            statusBarBrightness: Brightness.dark,
          ),
          title: const Text(
            'Login page',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
                width: 200,
                height: 200,
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
                )),
            Column(
              children: [
                GenericInput(
                  label: 'Email',
                  border: const OutlineInputBorder(),
                  onChanged: (input) => {emailValue = input, _toggleButton()},
                ),
                GenericInput(
                  label: 'Password',
                  border: const OutlineInputBorder(),
                  onChanged: (input) => {passwordValue = input, _toggleButton()},
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password',
                        style: blueText,
                      ),
                    ),
                    SizedBox(
                      width: 240,
                      height: 40,
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                            backgroundColor: Colors.blue),
                        onPressed: canLogin ? () {} : null,
                        child:
                            const Text('Login', style: TextStyle(fontSize: 18)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text('New user? Create account', style: TextStyle(color: Colors.black))),
                ],
              ),
            )
          ],
        ));
  }
}
