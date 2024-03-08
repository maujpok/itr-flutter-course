import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor:  Color.fromARGB(255, 14, 53, 100), 
        ),
        backgroundColor: const Color.fromARGB(251, 59, 126, 226),
        title: const Text(
           'Login Page',
           style: TextStyle(color: Colors.white),
          ),
      ),
      body: Column(
        children: [
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(60),
                //padding: const EdgeInsets.all(60), 
                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png'),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
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
                padding: const EdgeInsets.all(10),
                child: TextFormField(
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
                  style: TextStyle(
                    color: Colors.blue, 
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 24, 40, 189)),
                    foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 62, 62, 63)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        side: BorderSide(color: Color.fromARGB(255, 43, 46, 223))
                      )
                    )
                  ),
                  child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                ),
              ),
            ],
          ),
         ),
        const Text('New User? Create Account', style: TextStyle(color: Colors.black),),
        ],
      ), 
    );
  }
}
