import 'package:flutter/material.dart';

class CustomElevetedBotton extends StatelessWidget {
  const CustomElevetedBotton(
      {Key? key, required this.color, required this.text, required this.widget})
      : super(key: key);
  final Widget widget;
  final Color color;
  final String text;

//* cette fonction permet de donner de coleur au botton
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      //* row expanded et padding permet d'avoir une bonne largeur
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      //* quand on tape ça envoie vers le widget
                      context,
                      MaterialPageRoute(
                        builder: (context) => widget,
                      ));
                },
                child: Text(text),
                style: ButtonStyle(
                    //* et c'est
                    backgroundColor:
                        MaterialStateProperty.resolveWith(getColor))),
          ),
        ),
      ],
    );
  }
}
