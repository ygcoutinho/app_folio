import 'package:app_folio/components/aboutdev/abilities_and_competences_items.dart';
import 'package:flutter/material.dart';

class AabilitiesAndCompetences extends StatelessWidget {
  const AabilitiesAndCompetences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xFF172026),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              AbilitiesAndCompetencesItems(abilitieText: 'JDEdwards', skillLevel: 190),
              AbilitiesAndCompetencesItems(abilitieText: 'Dart/Flutter', skillLevel: 60),
              AbilitiesAndCompetencesItems(abilitieText: 'Embromation', skillLevel: 200),
              AbilitiesAndCompetencesItems(abilitieText: 'HTML 5', skillLevel: 100),
              AbilitiesAndCompetencesItems(abilitieText: 'CSS 3', skillLevel: 100),
            ],
          ),
        ),
      ),
    );
  }
}
