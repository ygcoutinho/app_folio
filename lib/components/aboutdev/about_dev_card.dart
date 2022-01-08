import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutDevCard extends StatelessWidget {
  const AboutDevCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        height: 320,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xFF172026),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 75,
                child: ClipOval(
                  child: Image.asset(
                    'lib/assets/images/profile/foto.jpg',
                  ),
                ),
              ),
            ),
            const Text(
              'Yago Coutinho',
              textAlign: TextAlign.center,
            ),
            const Text(
              'Blablablablavblabla\nblalablablavblabla\nblalalalala',
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const FaIcon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
