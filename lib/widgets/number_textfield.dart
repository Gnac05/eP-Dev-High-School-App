import 'package:flutter/material.dart';

//Ce widget permet de saisir uniquement des nombres
class NumTextField extends StatelessWidget {
  const NumTextField({Key? key, required this.text, required this.maxlengt})
      : super(key: key);
  final String text;
  final int
      maxlengt; // cette variable permet de fixer un certain nombre de chiffre
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        maxLength: maxlengt,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: text,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
