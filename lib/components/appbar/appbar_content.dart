import 'package:flutter/material.dart';

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
                child: const Icon(Icons.light_mode_rounded),
                style: TextButton.styleFrom(primary: Colors.white, fixedSize: Size(24, 24)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
