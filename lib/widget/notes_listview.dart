import 'package:flutter/material.dart';

import 'note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemBuilder: (BuildContext context, int index) {
      return const NoteItem();
    },);
  }
}
