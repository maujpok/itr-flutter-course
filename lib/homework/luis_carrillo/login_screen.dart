import 'package:flutter/material.dart';
import 'widget/custom_app_bar.dart';
import 'widget/email_input.dart';
import 'widget/forgot_password_button.dart';
import 'widget/login_button.dart';
import 'widget/logo_image.dart';
import 'widget/password_input.dart';
import 'widget/bottom_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                LogoImage(),
                EmailInput(),
                SizedBox(height: 15),
                PasswordInput(),
                ForgotPasswordButton(),
                LoginButton(),
              ],
            ),
          ),
          Flexible(
            child: BottomBar(),
          ),
        ],
      ),
    );
  }
}
