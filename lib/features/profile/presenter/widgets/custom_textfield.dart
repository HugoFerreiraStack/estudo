import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
   const CustomTextfield({super.key, required this.labelText, required this.controller, required this.onChanged});
  final String labelText;
  final TextEditingController controller;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
        ),
        controller: controller,
        onChanged: onChanged,
      ),
    );
  }
}