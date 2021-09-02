import 'package:ep_dev_high_school_app/screen/sign-up.dart';
import 'package:ep_dev_high_school_app/screen/sign_in.dart';
import 'package:ep_dev_high_school_app/widgets/design.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Design(),
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              //* Pour mettre tout au milieu
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome', style: TextStyle(fontSize: 30)),
                Text('to', style: TextStyle(fontSize: 30)),
                Text('ePatriote Dev High School',
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // ce widget sert à avoir les boutons pour s'inscrire ou se connecter
                    ElevatedButton(
                        onPressed: () {
                          // le widget ci dessous (Navigator.push) sert à passer d'une interface a une autre
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ));
                        },
                        child: Text('Sign Up', style: TextStyle(fontSize: 20))),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()));
                        },
                        child: Text('Sign In', style: TextStyle(fontSize: 20))),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
