import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressedButton;
  const CustomButton({
    super.key,
    required this.label,
    required this.onPressedButton,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressedButton();
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(45),
        backgroundColor: const Color.fromARGB(255, 88, 101, 242),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
