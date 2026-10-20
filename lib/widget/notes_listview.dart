import 'package:flutter/material.dart';

import 'note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemBuilder: (BuildContext context, int index) {
        return const NoteItem();
      },),
    );
  }
}
