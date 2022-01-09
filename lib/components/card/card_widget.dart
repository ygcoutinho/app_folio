import 'package:app_folio/components/card/card_git_button.dart';
import 'package:app_folio/components/card/card_icon_exercises.dart';
import 'package:app_folio/models/card_model.dart';
import 'package:app_folio/routes/app_routes.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardModel cardItems;

  CardWidget({Key? key, required this.cardItems}) : super(key: key);

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
        children: [
          CardIconExercises(icon: cardItems.icon, title: cardItems.title, exercicesQuantity: cardItems.exercicesQuantity),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              cardItems.description,
              maxLines: 2,
              softWrap: true,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          CardGitButton(route: AppRoutes.EXERCISES),
        ],
      ),
    );
  }
}
