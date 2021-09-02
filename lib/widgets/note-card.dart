import 'package:ep_dev_high_school_app/data/data_student_second.dart';
import 'package:ep_dev_high_school_app/models/student_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//* Second
class NotesCardSecond extends StatefulWidget {
  const NotesCardSecond({
    Key? key,
  }) : super(key: key);

  @override
  _NotesCardSecondState createState() => _NotesCardSecondState();
}

Object changeS1 = 0; //* ces variables sont pour le dropdownbutton
Object changeS2 = 0; //* sans ça on ne pourra pas faire un choix
Object changeS3 = 0;

class _NotesCardSecondState extends State<NotesCardSecond> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('ePatriote Dev High School',
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold)),
        ), //* ce padding permet d'avoir de l'espace tout autour du nom
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Table(
            border: TableBorder.all(color: Colors.black),
            children: [
              TableRow(
                children: [
                  Text(' Name'),
                  Text(' Firsts Names'),
                  Text(' Note/20')
                ],
              )
            ],
          ),
        ), //* ce padding contient un tableau a une ligne et trois colonnes
        Expanded(
          flex: 8,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return NoteCard(s: studentSecond[index]);
            },
            itemCount: studentSecond.length,
          ),
        ), //* il faut souvent mettre les listview dans un espace bien défini si non ça peut retourner des erreurs
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Text('Material : '),
              DropdownButton(
                value: changeS1,
                items: [
                  DropdownMenuItem(
                    child: Text(''),
                    value: 0,
                  ), //*ce widget a besoin de value pour que DropdownButton assure
                  DropdownMenuItem(child: Text('PA'), value: 1),
                  DropdownMenuItem(child: Text('API'), value: 2),
                  DropdownMenuItem(child: Text('ASL'), value: 3),
                  DropdownMenuItem(child: Text('Nginx'), value: 4),
                  DropdownMenuItem(child: Text('HTTP'), value: 5),
                ],
                onChanged: (value) {
                  setState(() {
                    changeS1 = value!;
                  });
                },
              ), //* ce widget a besoin pour bien fonctionner value items et onChanged
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Note Type : '),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(child: Text(''), value: 0),
                        DropdownMenuItem(child: Text('I1'), value: 1),
                        DropdownMenuItem(child: Text('I2'), value: 2),
                        DropdownMenuItem(child: Text('I3'), value: 3),
                        DropdownMenuItem(child: Text('Task1'), value: 4),
                        DropdownMenuItem(child: Text('Task2'), value: 5),
                      ],
                      value: changeS2,
                      onChanged: (value) {
                        setState(() {
                          changeS2 = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Semester : '),
            DropdownButton(
              value: changeS3,
              items: [
                DropdownMenuItem(
                  child: Text(''),
                  value: 0,
                ), //*ce widget a besoin de value pour que DropdownButton assure
                DropdownMenuItem(child: Text('1'), value: 1),
                DropdownMenuItem(child: Text('2'), value: 2),
              ],
              onChanged: (value) {
                setState(() {
                  changeS3 = value!;
                });
              },
            ), //* ce widget a besoin pour bien fonctionner value items et onChanged
            SizedBox(width: 8),
            Text(
                "Effectif : ${studentSecond.length}  ") //* c'est pour avoir l'effectif de la classe
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Validation'),
        ), //* ce bouton doit permettre de sauvegarder les données
      ],
    );
  }
}

//* First
class NotesCardFirst extends StatefulWidget {
  const NotesCardFirst({Key? key}) : super(key: key);

  @override
  _NotesCardFirstState createState() => _NotesCardFirstState();
}

Object changeF1 = 0; //* ces variables sont pour le dropdownbutton
Object changeF2 = 0; //* sans ça on ne pourra pas faire un choix
Object changeF3 = 0;

class _NotesCardFirstState extends State<NotesCardFirst> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('ePatriote Dev High School',
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold)),
        ), //* ce padding permet d'avoir de l'espace tout autour du nom
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Table(
            border: TableBorder.all(color: Colors.black),
            children: [
              TableRow(
                children: [
                  Text(' Name'),
                  Text(' Firsts Names'),
                  Text(' Note/20')
                ],
              )
            ],
          ),
        ), //* ce padding contient un tableau a une ligne et trois colonnes
        Expanded(
          flex: 8,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return NoteCard(s: studentFirst[index]);
            },
            itemCount: studentFirst.length,
          ),
        ), //* il faut souvent mettre les listview dans un espace bien défini si non ça peut retourner des erreurs
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Text('Material : '),
              DropdownButton(
                value: changeF1,
                items: [
                  DropdownMenuItem(
                    child: Text(''),
                    value: 0,
                  ), //*ce widget a besoin de value pour que DropdownButton assure
                  DropdownMenuItem(child: Text('PA'), value: 1),
                  DropdownMenuItem(child: Text('API'), value: 2),
                  DropdownMenuItem(child: Text('ASL'), value: 3),
                  DropdownMenuItem(child: Text('Nginx'), value: 4),
                  DropdownMenuItem(child: Text('HTTP'), value: 5),
                ],
                onChanged: (value) {
                  setState(() {
                    changeF1 = value!;
                  });
                },
              ), //* ce widget a besoin pour bien fonctionner value items et onChanged
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Note Type : '),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(child: Text(''), value: 0),
                        DropdownMenuItem(child: Text('I1'), value: 1),
                        DropdownMenuItem(child: Text('I2'), value: 2),
                        DropdownMenuItem(child: Text('I3'), value: 3),
                        DropdownMenuItem(child: Text('Task1'), value: 4),
                        DropdownMenuItem(child: Text('Task2'), value: 5),
                      ],
                      value: changeF2,
                      onChanged: (value) {
                        setState(() {
                          changeF2 = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Semester : '),
            DropdownButton(
              value: changeF3,
              items: [
                DropdownMenuItem(
                  child: Text(''),
                  value: 0,
                ), //*ce widget a besoin de value pour que DropdownButton assure
                DropdownMenuItem(child: Text('1'), value: 1),
                DropdownMenuItem(child: Text('2'), value: 2),
              ],
              onChanged: (value) {
                setState(() {
                  changeF3 = value!;
                });
              },
            ), //* ce widget a besoin pour bien fonctionner value items et onChanged
            SizedBox(
              width: 20,
            ),
            Text(
                "Effectif : ${studentFirst.length}  ") //* c'est pour avoir l'effectif de la classe
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Validation'),
        ), //* ce bouton doit permettre de sauvegarder les données
      ],
    );
  }
}

//*Terminal
class NotesCardTernimal extends StatefulWidget {
  const NotesCardTernimal({Key? key}) : super(key: key);

  @override
  _NotesCardTernimalState createState() => _NotesCardTernimalState();
}

Object changeT1 = 0; //* ces variables sont pour le dropdownbutton
Object changeT2 = 0; //* sans ça on ne pourra pas faire un choix
Object changeT3 = 0;

class _NotesCardTernimalState extends State<NotesCardTernimal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('ePatriote Dev High School',
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold)),
        ), //* ce padding permet d'avoir de l'espace tout autour du nom
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Table(
            border: TableBorder.all(color: Colors.black),
            children: [
              TableRow(
                children: [
                  Text(' Name'),
                  Text(' Firsts Names'),
                  Text(' Note/20')
                ],
              )
            ],
          ),
        ), //* ce padding contient un tableau a une ligne et trois colonnes
        Expanded(
          flex: 8,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return NoteCard(s: studentTerminal[index]);
            },
            itemCount: studentTerminal.length,
          ),
        ), //* il faut souvent mettre les listview dans un espace bien défini si non ça peut retourner des erreurs
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Text('Material : '),
              DropdownButton(
                value: changeT1,
                items: [
                  DropdownMenuItem(
                    child: Text(''),
                    value: 0,
                  ), //*ce widget a besoin de value pour que DropdownButton assure
                  DropdownMenuItem(child: Text('PA'), value: 1),
                  DropdownMenuItem(child: Text('API'), value: 2),
                  DropdownMenuItem(child: Text('ASL'), value: 3),
                  DropdownMenuItem(child: Text('Nginx'), value: 4),
                  DropdownMenuItem(child: Text('HTTP'), value: 5),
                ],
                onChanged: (value) {
                  setState(() {
                    changeT1 = value!;
                  });
                },
              ), //* ce widget a besoin pour bien fonctionner value items et onChanged
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Note Type : '),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(child: Text(''), value: 0),
                        DropdownMenuItem(child: Text('I1'), value: 1),
                        DropdownMenuItem(child: Text('I2'), value: 2),
                        DropdownMenuItem(child: Text('I3'), value: 3),
                        DropdownMenuItem(child: Text('Task1'), value: 4),
                        DropdownMenuItem(child: Text('Task2'), value: 5),
                      ],
                      value: changeT2,
                      onChanged: (value) {
                        setState(() {
                          changeT2 = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Semester : '),
            DropdownButton(
              items: [
                DropdownMenuItem(child: Text(''), value: 0),
                DropdownMenuItem(child: Text('1'), value: 1),
                DropdownMenuItem(child: Text('2'), value: 2),
              ],
              value: changeT3,
              onChanged: (value) {
                setState(() {
                  changeT3 = value!;
                });
              },
            ),
            SizedBox(
              width: 20,
            ),
            Text(
                "Effectif : ${studentSecond.length}  ") //* c'est pour avoir l'effectif de la classe
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Validation'),
        ), //* ce bouton doit permettre de sauvegarder les données
      ],
    );
  }
}

//*c'est ce petit widget qui affiche les etudiants
class NoteCard extends StatelessWidget {
  const NoteCard({Key? key, required this.s}) : super(key: key);
  final student s;
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
              TextField(keyboardType: TextInputType.number)
            ],
          )
        ],
      ),
    );
  }
}
