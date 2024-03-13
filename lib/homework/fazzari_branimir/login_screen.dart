import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreenBranimir extends StatefulWidget {
  const LoginScreenBranimir({super.key});

  @override
  State<LoginScreenBranimir> createState() => _LoginScreenBranimirState();
}

class _LoginScreenBranimirState extends State<LoginScreenBranimir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.purple, statusBarBrightness: Brightness.dark),
        title: const Text('Iniciar sesión'),
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
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: 'Usuario'),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'Contraseña'),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Ingresar'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Olvidé mi contraseña'),
                ),
                TextButton(onPressed: () {}, child: const Text('Registarse'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
