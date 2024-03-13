// ignore_for_file: avoid_print

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(top: 0, bottom: 10),
        child: RichText(
          text: TextSpan(
            text: 'New User? ',
            style: const TextStyle(color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: 'Create Account',
                style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('se hizo tab en Create Account');
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
