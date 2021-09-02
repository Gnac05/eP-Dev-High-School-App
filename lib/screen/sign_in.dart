import 'package:ep_dev_high_school_app/home.dart';
import 'package:ep_dev_high_school_app/widgets/custom_textfield.dart';
import 'package:ep_dev_high_school_app/widgets/number_textfield.dart';
import 'package:ep_dev_high_school_app/widgets/password_textfield.dart';
import 'package:ep_dev_high_school_app/widgets/popupmenuitem.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
            itemBuilder: (context) => [
              PopupMenuItem(
                  //* Pour changer de langue
                  child: GestureDetector(
                child: CustomPopupMenuItem(icon: Icons.lens, text: 'Language'),
              )),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Sign Up',
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold)),
          ),
          //* sans ce expanded on ne voit pas les enfants de la
          //* listview
          Expanded(
            child: ListView(
              children: [
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
                PassWordTextField(text: "Password"),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                          color: Colors.red,
                          decoration: TextDecoration.underline,
                          fontSize: 15),
                    )),
                //* le padding sert à restreindre le bouton
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                            (route) => false);
                      },
                      child:
                          Text('Connection', style: TextStyle(fontSize: 20))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
