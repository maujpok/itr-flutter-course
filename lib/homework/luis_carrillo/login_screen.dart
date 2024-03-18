import 'package:flutter/material.dart';
import 'package:itr_course_app/homework/luis_carrillo/widget/home_luis.dart';
import 'widget/custom_app_bar.dart';
import 'widget/email_input.dart';
import 'widget/forgot_password_button.dart';
import 'widget/login_button.dart';
import 'widget/logo_image.dart';
import 'widget/password_input.dart';
import 'widget/bottom_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    void submitForm() {
      final isValid = _formKey.currentState?.validate();
      if ( isValid == true) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeLuis()));
      }
      // if (_formKey.currentState!.validate()) {
      //   _formKey.currentState!.save();
      // }
    }

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  const LogoImage(),
                  const EmailInput(),
                  const SizedBox(height: 15),
                  const PasswordInput(),
                  const ForgotPasswordButton(),
                  LoginButton(onPressed: submitForm),
                ],
              ),
            ),
            const Flexible(
              child: BottomBar(),
            ),
          ],
        ),
      ),
    );
  }
}
