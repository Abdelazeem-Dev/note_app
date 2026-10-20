import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/widget/note_item.dart';
import 'package:note_app/widget/notes_listview.dart';

import 'custom_appbar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
          children: [
            SizedBox(height: 50,),
      CustomAppbar(),
             Expanded(child: NotesListview())
           ]
      ),
    );
  }
}
