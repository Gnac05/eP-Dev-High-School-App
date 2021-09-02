import 'package:ep_dev_high_school_app/widgets/note-card.dart';
import 'package:flutter/material.dart';

class NotesPageFirst extends StatelessWidget {
  const NotesPageFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: NotesCardFirst(),
    );
  }
}
