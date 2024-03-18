import 'package:flutter/material.dart';
import 'package:itr_course_app/homework/luis_carrillo/widget/input_text.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  PasswordInputState createState() => PasswordInputState();
}

class PasswordInputState extends State<PasswordInput> {
  late String _passInput;

  String? nonNullValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campo no puede estar vacío';
    }
    return null;
  }

  void handleTextChange(String value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return InputText(
        label: "Password",
        hint: "Password",
        icon: const Icon(Icons.lock_outline),
        keyboard: TextInputType.text,
        obscure: true,
        onChanged: handleTextChange,
        validator: nonNullValidator,
        enableInteractiveSelection: false);
  }
}
