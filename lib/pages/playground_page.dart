import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlaygroundPage extends StatelessWidget {
  const PlaygroundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text('PlayGround', style: TextStyle(fontSize: 20)),
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
      body: const Center(
        child: Text(
          'Em breve!',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
