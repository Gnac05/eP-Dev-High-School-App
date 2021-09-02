import 'package:ep_dev_high_school_app/data/data_user.dart';
import 'package:ep_dev_high_school_app/models/user.dart';
import 'package:flutter/material.dart';

class ListUser extends StatelessWidget {
  const ListUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('ePatriote Dev High School',
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Text('Name'),
                    Text('First Name'),
                    Text('Role')
                  ])
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) => UserCard(s: userList[index]),
            ))
          ],
        ),
      ),
    );
  }
}

//* c'est la carte d'un utilisateur
class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.s}) : super(key: key);
  final user s;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Table(
        border: TableBorder.all(color: Colors.black),
        children: [
          TableRow(
            children: [
              Text(' ${s.name}', overflow: TextOverflow.ellipsis),
              Text(' ${s.firstname}', overflow: TextOverflow.ellipsis),
              TextField(
                  decoration: InputDecoration(hintText: ' ${s.role}'),
                  keyboardType: TextInputType.name)
            ],
          )
        ],
      ),
    );
  }
}
