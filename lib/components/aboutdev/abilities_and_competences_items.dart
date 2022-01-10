import 'package:flutter/material.dart';

class AbilitiesAndCompetencesItems extends StatelessWidget {
  const AbilitiesAndCompetencesItems({Key? key, required this.abilitieText, required this.skillLevel}) : super(key: key);
  final String abilitieText;
  final double skillLevel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(abilitieText),
        const SizedBox(width: 47),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color(0xFF0D0E0F),
              ),
              height: 9,
              width: 200,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color(0xFF055AA3),
              ),
              height: 9,
              width: skillLevel,
            ),
          ],
        )
      ],
    );
  }
}
