import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImplicitAnimation1 extends StatefulWidget {
  const ImplicitAnimation1({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimation1> createState() => _ImplicitAnimation1State();
}

class _ImplicitAnimation1State extends State<ImplicitAnimation1> {
  bool isExpanded = false;
  final duration = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text('Animação Implícita 1', style: TextStyle(fontSize: 20)),
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
            label: const Text(''),
          ),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: AnimatedAlign(
              alignment: isExpanded ? Alignment.bottomRight : Alignment.topCenter,
              duration: const Duration(seconds: 1),
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                decoration: BoxDecoration(
                  borderRadius: isExpanded ? BorderRadius.circular(100) : BorderRadius.circular(0),
                  color: Colors.blue,
                ),
                width: isExpanded ? 50 : 100,
                height: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
