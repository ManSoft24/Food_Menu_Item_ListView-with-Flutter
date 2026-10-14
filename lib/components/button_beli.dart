import 'package:flutter/material.dart';

class ButtonBeli extends StatelessWidget {
  final String label;
  final VoidCallback onPressedButton;
  const ButtonBeli({
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
        backgroundColor: Color.fromARGB(255, 242, 196, 106),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
