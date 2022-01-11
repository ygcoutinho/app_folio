import 'package:app_folio/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarItemCustom extends StatelessWidget {
  const BottomNavBarItemCustom({Key? key, required this.icon, required this.label, required this.route}) : super(key: key);

  final FaIcon icon;
  final String label;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: () => Navigator.pushReplacementNamed(context, route),
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            label,
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
