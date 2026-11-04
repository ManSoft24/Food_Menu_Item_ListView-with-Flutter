import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController txtController;
  final String myHint;
  final bool obscureText;

  const CustomTextfield({
    super.key,
    required this.txtController,
    required this.myHint,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        hint: Text(myHint),
        fillColor: const Color.fromARGB(255, 32, 34, 37),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
