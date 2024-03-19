import 'package:flutter/material.dart';
import 'package:itr_course_app/homework/luis_carrillo/widget/input_text.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController? controller;
  final Function(String?)? onSaved;

  const PasswordInput({
    Key? key,
    this.controller,
    this.onSaved,
  }) : super(key: key);

  @override
  PasswordInputState createState() => PasswordInputState();
}

class PasswordInputState extends State<PasswordInput> {


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
  void dispose() {
    widget.controller?.dispose();
    super.dispose();
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
        controller: widget.controller,
        onSaved:widget.onSaved ?? (String? value) {},
        validator: nonNullValidator,
        enableInteractiveSelection: false);
  }
}
