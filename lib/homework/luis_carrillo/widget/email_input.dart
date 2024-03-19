import 'package:flutter/material.dart';
import 'package:itr_course_app/homework/luis_carrillo/widget/input_text.dart';

class EmailInput extends StatefulWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  EmailInputState createState() => EmailInputState();
}

class EmailInputState extends State<EmailInput> {

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor ingrese su correo electrónico';
    }
    final emailPattern = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailPattern.hasMatch(value)) {
      return 'Por favor ingrese un correo electrónico válido';
    }
    return null;
  }

  void handleTextChange(String value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return InputText(
        label: "Email",
        hint: "Email",
        icon: const Icon(Icons.alternate_email),
        keyboard: TextInputType.emailAddress,
        obscure: false,
        onChanged: handleTextChange,
        validator: emailValidator,
        enableInteractiveSelection: true, onSaved: (String data) {  },);
  }
}