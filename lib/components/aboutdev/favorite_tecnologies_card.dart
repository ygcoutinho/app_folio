import 'package:flutter/material.dart';

class FavoriteTecnologiesCard extends StatelessWidget {
  const FavoriteTecnologiesCard({Key? key, required this.cardTittle}) : super(key: key);
  final String cardTittle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        decoration: BoxDecoration(color: const Color(0xFF172026), borderRadius: BorderRadius.circular(20)),
        height: 100,
        width: 94,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(size: 48),
            const SizedBox(height: 8),
            Text(
              cardTittle,
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
