import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final String hint;
  final Icon icon;
  final TextInputType keyboard;
  final bool obscure;
  final bool enableInteractiveSelection;
  final void Function( String data ) onChanged;
  final String? Function( String? data ) validator;

  const InputText ({
     Key? key,
     this.label = "",
     this.hint = "",
     required this.icon,
     this.keyboard = TextInputType.text,
     required this.obscure,
     required this.onChanged,
     required this.validator,
     required this.enableInteractiveSelection})
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        enableInteractiveSelection: enableInteractiveSelection,
        keyboardType: keyboard,
        obscureText: obscure,
        onChanged: onChanged,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          // hintText: hint,
          suffixIcon: icon,
            contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.grey),
          )
        ),
      ),
    );
  }
}

