import 'package:app_folio/components/card/card_git_%20button.dart';
import 'package:app_folio/components/card/card_icon_exercises.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xFF172026),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CardIconExercises(),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
              maxLines: 2,
              softWrap: true,
              style: TextStyle(fontSize: 16),
            ),
          ),
          CardGitButton(),
        ],
      ),
    );
  }
}
