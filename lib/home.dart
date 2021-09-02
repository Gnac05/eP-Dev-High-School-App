import 'package:ep_dev_high_school_app/screen/pages/home_page.dart';
import 'package:ep_dev_high_school_app/screen/pages/list_users.dart';
import 'package:ep_dev_high_school_app/screen/pages/notes/notes.dart';
import 'package:ep_dev_high_school_app/screen/pages/profil.dart';
import 'package:ep_dev_high_school_app/screen/pages/result.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 2;
  //* cette variable est tres utile elle sert à initialiser et même à changer de page
//* Un moyen tres simple d'avoir le bottomnavigationbar
  List<Widget> pages = [HomePage(), ListUser(), Profil(), Notes(), Result()];

  List<BottomNavigationBarItem> items = [
    //* cette liste donne l'icon et label(le text s'affiche quand on tap)
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
    BottomNavigationBarItem(icon: Icon(Icons.note_add), label: 'Notes'),
    BottomNavigationBarItem(icon: Icon(Icons.grade), label: 'Result'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: items,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
      body: pages[index],
    );
  }
}
