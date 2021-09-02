import 'package:flutter/material.dart';

//* Ce widget sert à saisir le mot de passe
//* et on peut cacher comment afficher le mot de passe

class PassWordTextField extends StatefulWidget {
  const PassWordTextField({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  _PassWordTextFieldState createState() => _PassWordTextFieldState();
}

class _PassWordTextFieldState extends State<PassWordTextField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            labelText: widget.text,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              icon: Icon(!isVisible
                  ? Icons.visibility_off_outlined
                  : Icons.visibility),
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        //* permet de cacher quand c'est sur true
        obscureText: isVisible,
      ),
    );
  }
}
