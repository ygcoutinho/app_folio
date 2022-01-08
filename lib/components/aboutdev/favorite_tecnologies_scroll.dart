import 'package:app_folio/components/aboutdev/favorite_tecnologies_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavoriteTecnologiesScroll extends StatelessWidget {
  const FavoriteTecnologiesScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(right: 10),
          children: const [
            FavoriteTecnologiesCard(cardTittle: 'Flutter'),
            FavoriteTecnologiesCard(cardTittle: 'Flutter'),
            FavoriteTecnologiesCard(cardTittle: 'Flutter'),
            FavoriteTecnologiesCard(cardTittle: 'Flutter'),
            FavoriteTecnologiesCard(cardTittle: 'Flutter'),
            FavoriteTecnologiesCard(cardTittle: 'Flutter'),
            FavoriteTecnologiesCard(cardTittle: 'Flutter'),
            FavoriteTecnologiesCard(cardTittle: 'Flutter'),
          ],
        ),
      ),
    );
  }
}



// SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               width: 50,
//               height: 50,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );