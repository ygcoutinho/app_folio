import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarContent extends StatelessWidget {
  const AppBarContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 58, left: 21, bottom: 24),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 4),
            width: 48,
            height: 48,
            child: Image.asset('lib/assets/images/logo/logo@3x.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Atividades',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Flutterando Masterclass',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const FaIcon(FontAwesomeIcons.sun),
                style: TextButton.styleFrom(primary: Colors.white, fixedSize: const Size(24, 24)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
