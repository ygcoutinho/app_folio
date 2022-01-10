import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TinderClone extends StatelessWidget {
  const TinderClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text('Tela de Login do Tinder', style: TextStyle(fontSize: 20)),
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
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFFED7361), Color(0xFFE94976)],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 70),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 200),
              Image.asset('lib/assets/tinder_clone/Logo.png', scale: 6),
              const SizedBox(height: 9),
              const RichTextT(),
              const SizedBox(height: 40),
              ButtonT(
                textT: 'SIGN IN WITH APPLE',
                iconT: 'lib/assets/tinder_clone/icon-apple.png',
                stackPosition: 120,
              ),
              ButtonT(
                textT: 'SIGN IN WITH FACEBOOK',
                iconT: 'lib/assets/tinder_clone/icon-facebook.png',
                stackPosition: 105,
              ),
              ButtonT(
                textT: 'SIGN IN WITH PHONE NUMBER',
                iconT: 'lib/assets/tinder_clone/icon-conversation-balloon.png',
                stackPosition: 85,
              ),
              const SizedBox(height: 15),
              RichText(textAlign: TextAlign.center, text: const TextSpan(text: 'Trouble Signing In?', style: TextStyle(fontSize: 16))),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonT extends StatelessWidget {
  String textT, iconT;
  double stackPosition;
  ButtonT({Key? key, required this.textT, required this.iconT, required this.stackPosition}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0, left: 25.0, bottom: 10),
      child: SizedBox(
        width: 410,
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(18)),
            shadowColor: MaterialStateProperty.all<Color>(const Color.fromARGB(0, 0, 0, 0)),
            backgroundColor: MaterialStateProperty.all<Color>(const Color(0x0000FFFF)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: const BorderSide(color: Colors.white),
              ),
            ),
          ),
          onPressed: () {},
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.loose,
            children: [
              Positioned(
                left: -stackPosition,
                child: Image.asset(
                  iconT,
                  height: 20,
                ),
              ),
              Stack(
                children: [
                  Text(
                    textT,
                    style: const TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RichTextT extends StatelessWidget {
  const RichTextT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        text: 'By tapping Create Account or Sign In, you agree to our\n',
        children: [
          TextSpan(
            text: 'Terms.',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: ' Learn how we process your data in our'),
          TextSpan(
            text: ' Privacy\nPolicy',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: ' and '),
          TextSpan(
            text: 'Cookies Policy',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
