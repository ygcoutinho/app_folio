import 'package:flutter/material.dart';

class CardIconExercises extends StatelessWidget {
  const CardIconExercises({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 13, right: 13),
              child: Container(
                width: 43,
                height: 43,
                decoration: BoxDecoration(
                  color: const Color(0xFF055AA3),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset('lib/assets/images/icons/Icon awesome-running@3x.png'),
                ),
              ),
            ),
            const Text(
              'Animações',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              'Exercícios:',
              style: TextStyle(fontSize: 12, color: Color(0xFF51565A)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 11, right: 11),
              child: Text(
                '4',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        )
      ],
    );
  }
}
