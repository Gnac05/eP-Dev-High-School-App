import 'package:ep_dev_high_school_app/screen/pages/forbidden.dart';
import 'package:ep_dev_high_school_app/widgets/elevatedbotton.dart';
import 'package:flutter/material.dart';

//* l'onglet note est pour le professeur donc il pourra enregistrer les notes
class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, //* pour pouvoir centrer
          children: [
            CustomElevetedBotton(
              //* ce widget est un elevetedbotton qui a été customisé
              color: Colors.green, //* ça c'est pour sa couleur
              text: '2nde', //* ça pour l'enfant qui est un text
              widget: Forbidden(), //* et ça c'est ce qu'il donne quand on tape
            ),
            SizedBox(
              height: 10,
            ),
            CustomElevetedBotton(
              color: Colors.yellow,
              text: '1ère',
              widget: Forbidden(),
            ),
            SizedBox(
              height: 10,
            ),
            CustomElevetedBotton(
              color: Colors.red,
              text: 'Tle',
              widget: Forbidden(),
            )
          ],
        ),
      ),
    );
  }
}
