import 'package:flutter/material.dart';

import '../widget/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body:const NoteViewBody(),
      floatingActionButton: FloatingActionButton(onPressed: () {  },child: Icon(Icons.add,color: Colors.white,size: 30,),)

    );
  }
}
