import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MockupReading extends StatelessWidget {
  const MockupReading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Leitura de Mockup', style: TextStyle(fontSize: 20)),
            Text('Flutterando Masterclass', style: TextStyle(fontSize: 12)),
          ],
        ),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.sun,
              color: Colors.white,
            ),
            label: Text(''),
          ),
        ],
      ),
    );
  }
}
