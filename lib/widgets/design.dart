import 'package:flutter/material.dart';

class Design extends StatelessWidget {
  const Design({Key? key}) : super(key: key);

  LinearGradient get() {
    return LinearGradient(
      colors: [Colors.pinkAccent, Colors.redAccent, Colors.orangeAccent],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    );
    //* cette fonction permet d'avoir un fond d'écran
    //* qui a trois couleurs rose rouge et orange
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DesignClipper(),
      child: Container(
        decoration: BoxDecoration(gradient: get()),
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}

//* La classe suivante ma servie à rogner le fond d'écran
//* pour avoir autre forme
class DesignClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 150);
    path.quadraticBezierTo(100, size.height - 100, 100, size.height);
    path.lineTo(0, size.height);
    path.close();
    //*la ligne 35 à la ligne 38 permet d'avoir l'image en bas à gauche
    path.lineTo(size.width - 100, 0);
    path.quadraticBezierTo(size.width - 100, 100, size.width, 150);
    path.lineTo(size.width, 0);
    path.close();
    //* et la ligne 40 à 43 permet d'avoir l'image en haut à droit
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
