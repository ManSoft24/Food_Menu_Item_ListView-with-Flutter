import 'package:aplikasi_list_makanan/components/profile_component/icon_header_button_component.dart';
import 'package:flutter/material.dart';

class TopNavigationComponent extends StatelessWidget {
  const TopNavigationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const HeaderIconButtonComponent(icon: Icons.arrow_back),
        Row(
          children: const [
            HeaderIconButtonComponent(icon: Icons.search),
            HeaderIconButtonComponent(icon: Icons.qr_code),
            HeaderIconButtonComponent(icon: Icons.edit_outlined),
          ],
        ),
      ],
    );
  }
}
