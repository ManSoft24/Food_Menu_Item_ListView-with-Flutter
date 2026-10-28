import 'package:flutter/material.dart';

class HeaderIconButtonComponent extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const HeaderIconButtonComponent({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap ?? () {},
      icon: Icon(icon, color: Colors.white, size: 24),
      splashRadius: 22,
    );
  }
}
