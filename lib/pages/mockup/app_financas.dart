import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppFinancas extends StatelessWidget {
  const AppFinancas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text('App Finanças', style: TextStyle(fontSize: 20)),
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
      body: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const FlutterLogo(
                size: 130,
                textColor: Color(0xFF5e5ce4),
              ),
              const SizedBox(height: 40),
              const Text(
                'Get your Money \nUnder Control',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 19),
              const Text(
                'Manage your expenses. \nSeamlessly.',
                style: TextStyle(fontSize: 25, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: const Color(0xFF5e5ce4), fixedSize: const Size(440, 60)),
                onPressed: () {},
                child: const Text(
                  'Sign Up with Email ID',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: const Color(0xFFFFFFFF), fixedSize: const Size(440, 60)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        'lib/assets/app_financas/gicon.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Sign Up with Google',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(text: 'Already have an account? ', style: TextStyle(fontSize: 20)),
                  TextSpan(text: 'Sign in', style: TextStyle(decoration: TextDecoration.underline, fontSize: 20)),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
