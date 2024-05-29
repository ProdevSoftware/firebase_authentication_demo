import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final Icon? icon;
  final TextInputType? keyboardType;

  const TextFieldComponent(
      {super.key,
      this.hintText,
      this.controller,
      this.icon,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        prefixIcon: icon,
      ),
    );
  }
}
