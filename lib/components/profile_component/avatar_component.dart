import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  final String imageUrl;

  const AvatarComponent({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 125,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFF0B1014), 
          width: 3,
        ),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
