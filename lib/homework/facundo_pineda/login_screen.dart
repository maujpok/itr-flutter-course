import 'package:flutter/material.dart';
import 'package:itr_course_app/homework/facundo_pineda/building_screen.dart';
import 'package:itr_course_app/homework/facundo_pineda/welcome_screen.dart';
import 'package:itr_course_app/homework/facundo_pineda/user_class.dart';

class LoginScreenFacu extends StatefulWidget {
  const LoginScreenFacu({super.key});

  @override
  State<LoginScreenFacu> createState() => _LoginScreenFacuState();
}

///final myController = TextEditingController(); Como se usa?
class _LoginScreenFacuState extends State<LoginScreenFacu> {
  // this allows us to access the TextField text
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final UserFacu user = UserFacu(email: "facu", password: "123");

    ///Luego me di cuenta que podría ser directamente el Map
    Map<String, String> errors = {};
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
                  MaterialPageRoute(
                      builder: (context) => const BuildingScreen()),
                );
              },
              child: const Text('New User? Create Account',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 20)),
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
                child: Column(children: [
                  Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png')
                ]),
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
                onChanged: (text) {
                  user.email = text;
                },
                decoration: const InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    hintText: 'Email'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: (text) {
                  user.password = text;
                },
                decoration: const InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    hintText: 'Password'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BuildingScreen()),
                  );
                },
                child: const Text('Forgot Password',
                    style: TextStyle(color: Colors.lightBlue, fontSize: 20)),
              ),
              ElevatedButton(
                  // Within the `FirstRoute` widget
                  onPressed: () {
                    if (!_validatePassword(user.password)) {
                      //errors.({"Password", user.password});
                      errors.update("Password", (v) => user.password,
                          ifAbsent: () => user.password);
                    }
                    if (!_validateEmail(user.email)) {
                      //errors += ({"Email", user.email});
                      errors.update("Email", (v) => user.email,
                          ifAbsent: () => user.email);
                    }

                    if (errors.isEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomeScreen(user: user)),
                      );
                    } else {
                      String outString = "";
                      for (String error in errors.keys) {
                        outString +=
                            "Campo: $error - Valor Incorrecto: ${errors[error]}.\n";
                      }
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                                "Los siguientes campos no son válidos:\n $outString."),
                          );
                        },
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // <-- Radius
                      ),
                      backgroundColor: Colors.lightBlue,
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
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

  bool _validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return !(value!.isNotEmpty && !regex.hasMatch(value));
  }

  bool _validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return false;
    } else {
      return regex.hasMatch(value);
    }
  }
}
