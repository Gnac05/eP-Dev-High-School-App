import 'package:flutter/material.dart';

//*Ce widget permet de saisir spécialement les e-mail
//*mais on peux aussi l'utiliser pour saisir tout ce que l'on veut
class CustomTextfield extends StatelessWidget {
  final String text;
  const CustomTextfield({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText:
                text, //* pour qu'il est un texte au sur la bordure quand on tape

            border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(10)) //* pour qu'il est une bordure
            ),
      ),
    );
  }
}
