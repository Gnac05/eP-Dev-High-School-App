import 'package:ep_dev_high_school_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text('in',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text('ePatriote',
                      style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  Text('Dev High School',
                      style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold))
                ],
              ),
              flex: 10,
            ),
            CustomTextfield(text: 'Publication')
          ],
        ),
      ),
    );
  }
}
