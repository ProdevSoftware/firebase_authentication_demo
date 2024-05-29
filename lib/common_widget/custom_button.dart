import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final double height;
  final double width;
  final VoidCallback onTap;

  const CustomButton(
      {super.key,
      required this.name,
      required this.onTap,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        child: Center(child: Text(name)),
      ),
    );
  }
}
