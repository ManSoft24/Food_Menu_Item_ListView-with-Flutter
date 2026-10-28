import 'package:flutter/material.dart';

class ProfileIdentityComponent extends StatelessWidget {
  final String name;
  final String username;

  const ProfileIdentityComponent({
    super.key,
    required this.name,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ), 
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 4),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xFF8A959C),
              size: 22,
            ),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          username,
          style: const TextStyle(color: Color(0xFF8A959C), fontSize: 15),
        ),
      ],
    );
  }
}
