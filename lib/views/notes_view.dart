import 'package:flutter/material.dart';

import '../widget/note_view_body.dart';
import '../widget/show_botton_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body:const NoteViewBody(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,  builder: (BuildContext context) {
          return ShowBottonSheet();
        });
      },child: Icon(Icons.add,color: Colors.white,size: 30,),)

    );
  }
}
