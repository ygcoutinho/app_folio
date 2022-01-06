import 'package:app_folio/components/appbar/appbar_content.dart';
import 'package:flutter/material.dart';

class AboutDev extends StatefulWidget {
  const AboutDev({Key? key}) : super(key: key);

  @override
  _AboutDevState createState() => _AboutDevState();
}

class _AboutDevState extends State<AboutDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarContent(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Container(
          height: 320,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xFF172026),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'lib/assets/images/profile/foto.jpg',
                  ),
                ),
                radius: 75,
              ),
              Text('Yago Coutinho'),
              Text('Blablablablavblabla\nblalablablavblabla\nblalalalala'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit),
                  SizedBox(width: 27),
                  Icon(Icons.ac_unit),
                  SizedBox(width: 27),
                  Icon(Icons.ac_unit),
                  SizedBox(width: 27),
                  Icon(Icons.ac_unit),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
