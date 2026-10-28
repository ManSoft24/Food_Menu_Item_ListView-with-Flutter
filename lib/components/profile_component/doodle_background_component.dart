import 'package:flutter/material.dart';

class DoodleBackgroundComponent extends StatelessWidget {
  final double height;

  const DoodleBackgroundComponent({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: const BoxDecoration(color: Color(0xFF12181C)),
      child: Opacity(
        opacity: 0.04,
        child: Wrap(
          spacing: 28,
          runSpacing: 28,
          alignment: WrapAlignment.center,
          children: List.generate(
            45,
            (index) => Icon(
              index % 4 == 0
                  ? Icons.sentiment_satisfied_alt
                  : index % 3 == 0
                  ? Icons.star_border
                  : index % 2 == 0
                  ? Icons.chat_bubble_outline
                  : Icons.music_note_outlined,
              size: 26,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
