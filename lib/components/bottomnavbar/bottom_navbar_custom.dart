import 'package:app_folio/components/bottomnavbar/bottom_navbar_item_custom.dart';
import 'package:app_folio/components/bottomnavbar/vertical_divider_custom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarCustom extends StatelessWidget {
  const BottomNavBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        BottomNavBarItemCustom(icon: FaIcon(FontAwesomeIcons.bullseye), label: 'Atividades'),
        VerticalDividerCustom(),
        BottomNavBarItemCustom(icon: FaIcon(FontAwesomeIcons.github), label: 'Repositórios'),
        VerticalDividerCustom(),
        BottomNavBarItemCustom(icon: FaIcon(FontAwesomeIcons.userAlt), label: 'Sobre o dev'),
      ],
    );
  }
}
