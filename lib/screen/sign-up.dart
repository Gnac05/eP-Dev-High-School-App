import 'package:ep_dev_high_school_app/widgets/custom_textfield.dart';
import 'package:ep_dev_high_school_app/widgets/number_textfield.dart';
import 'package:ep_dev_high_school_app/widgets/password_textfield.dart';
import 'package:ep_dev_high_school_app/widgets/popupmenuitem.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          PopupMenuButton(
            //* Pour changer de langue
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: GestureDetector(
                      onTap: () {},
                      child: CustomPopupMenuItem(
                          icon: Icons.lens, text: 'Language')))
            ],
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Sign Up',
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Expanded(
          flex: 16,
          child: ListView(
            children: [
              CustomTextfield(text: "Name"),
              SizedBox(
                height: 5,
              ),
              CustomTextfield(text: "First Name"),
              SizedBox(
                height: 5,
              ),
              CustomTextfield(text: "E-mail"),
              SizedBox(
                height: 5,
              ),
              NumTextField(
                text: "Number",
                maxlengt: 8,
              ),
              SizedBox(
                height: 5,
              ),

              //*Date de naissance
              NumTextField(
                text: "Day of Birth",
                maxlengt: 2,
              ),
              SizedBox(
                height: 10.0,
              ),
              NumTextField(
                text: "Month of Birth",
                maxlengt: 2,
              ),
              SizedBox(
                height: 10.0,
              ),
              NumTextField(text: "Year of Birth", maxlengt: 4),
              SizedBox(
                height: 10.0,
              ),

              PassWordTextField(text: "Password"),
              SizedBox(
                height: 5,
              ),

              CustomTextfield(text: "Profile Photo"),
              SizedBox(
                height: 5,
              ),

              //* Domicile
              CustomTextfield(text: "Department"),
              SizedBox(
                height: 5,
              ),
              CustomTextfield(text: "City / Town"),
              SizedBox(
                height: 5,
              ),
              CustomTextfield(text: "District"),

              // le padding sert à restreindre le bouton
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                    //pour le moment comme on à l'étape de la création des ui
                    //c'est la variable change qui va me permettre de connaitre
                    //la catégorie de l'individu
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                          (route) => false);
                    },
                    child: Text('Sign Up', style: TextStyle(fontSize: 20))),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
