

import 'package:aplikasi_list_makanan/components/profile_component/avatar_component.dart';
import 'package:aplikasi_list_makanan/components/profile_component/doodle_background_component.dart';
import 'package:aplikasi_list_makanan/components/profile_component/status_bubble_component.dart';
import 'package:aplikasi_list_makanan/components/profile_component/top_navigation_component.dart';
import 'package:flutter/material.dart';

class ProfileHeaderSection extends StatelessWidget {
  final String statusText;
  final String imageUrl;

  const ProfileHeaderSection({
    super.key,
    required this.statusText,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290, 
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          const DoodleBackgroundComponent(height: 220),

          const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: TopNavigationComponent(),
            ),
          ),

          Positioned(
            bottom: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                StatusBubbleComponent(text: statusText),
                const SizedBox(height: 6),
                AvatarComponent(imageUrl: imageUrl),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
