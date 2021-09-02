import 'package:ep_dev_high_school_app/screen/pages/forbidden.dart';
import 'package:ep_dev_high_school_app/widgets/custom_textfield.dart';
import 'package:ep_dev_high_school_app/widgets/number_textfield.dart';
import 'package:ep_dev_high_school_app/widgets/password_textfield.dart';
import 'package:ep_dev_high_school_app/widgets/popupmenuitem.dart';
import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                  child:
                      CustomPopupMenuItem(icon: Icons.lens, text: 'Language')),
              PopupMenuItem(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Forbidden(),
                            ));
                      },
                      child: CustomPopupMenuItem(
                          icon: Icons.logout, text: 'Log Out'))),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 150,
                  child: Icon(
                    Icons.person,
                    size: 100,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.black)),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Modification',
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          ),
          Expanded(
              child: ListView(
            //à retoucher
            children: [
              CustomTextfield(text: 'Serge GNACADJA'),
              NumTextField(
                text: '69931636',
                maxlengt: 8,
              ),
              CustomTextfield(text: 'sergegnac2003@gmail.com'),
              PassWordTextField(text: '*******')
            ],
          ))
        ],
      ),
    );
  }
}
