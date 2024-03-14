import 'package:flutter/material.dart';

class GenericInput extends StatelessWidget {
  const GenericInput(
      {super.key, required this.label, required this.border, required this.onChanged});

  final String label;
  final InputBorder border;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(hintText: label, border: border),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "This field is required.";
            }

            return null;
          },
          onChanged: onChanged,
        ));
  }
}
