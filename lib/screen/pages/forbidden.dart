import 'package:ep_dev_high_school_app/widgets/design.dart';
import 'package:flutter/material.dart';

//* cette page est créé au cas où l'utilisateur
//* n'aurais pas acces à certaines fonctionnalitées
class Forbidden extends StatelessWidget {
  const Forbidden({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Design(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Error 403 Forbidden',
                style: TextStyle(fontSize: 80),
              )
            ],
          )
        ],
      ),
    );
  }
}
