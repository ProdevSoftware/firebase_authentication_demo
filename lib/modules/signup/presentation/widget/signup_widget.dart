import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final Icon? icon;

  const TextFieldComponent(
      {super.key, this.hintText, this.controller, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
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
