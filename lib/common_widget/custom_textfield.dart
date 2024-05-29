import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget
{
  final TextEditingController controller;
  final String hintText;
 // final ValueChanged<String>? value;
  final Function(String)? onChanged;



  const CustomTextField({super.key, required this.controller, required this.hintText,   this.onChanged,});
  @override
  Widget build(BuildContext context) {
   return TextField(
  onChanged: onChanged,
     controller: controller,
     decoration: InputDecoration(

       hintText: hintText,
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(20),
       ),

     ),
   );
  }

}