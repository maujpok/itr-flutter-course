import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 20),
      child: Container(
        alignment: Alignment.center,
        child: SizedBox(
          height: 100,
          width: 250,
          child: Image.network('https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png'),
        ),
      ),
    );
  }
}