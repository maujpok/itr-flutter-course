
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: 220,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF00BFFF)),
        ),
        child: const Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            )
        ),
      ),
    );
  }
}