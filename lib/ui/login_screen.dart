import 'package:flutter/material.dart';

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
        title: const Text('Iniciar sesión'),
      ),
      body: Column(
        children: [
          SizedBox(
              width: 200,
              height: 200,
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
              )
              ),
          Column(
            children: [
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: 'Usuario'),
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
