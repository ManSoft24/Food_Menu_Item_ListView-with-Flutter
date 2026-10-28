import 'package:flutter/material.dart';

class StatusBubbleComponent extends StatelessWidget {
  final String text;

  const StatusBubbleComponent({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF1F272A),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Color(0xFF8A959C), fontSize: 13.5),
      ),
    );
  }
}
