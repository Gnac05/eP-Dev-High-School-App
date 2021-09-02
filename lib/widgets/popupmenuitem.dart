import 'package:flutter/material.dart';

//* Ce widget permet d'aligner l'icon et le text dans
//* dans le popupmenu c'est-à-dire les trois qui sont de
//* l'appbar
class CustomPopupMenuItem extends StatelessWidget {
  const CustomPopupMenuItem({Key? key, required this.icon, required this.text})
      : super(key: key);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.black),
        SizedBox(
          width: 8,
        ),
        Text(text)
      ],
    );
  }
}
