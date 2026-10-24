import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/notes_view.dart';

import 'add_note_cubits/add_note_cubit.dart';
import 'constants.dart';

void main() async {
  runApp(const NoteApp());
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [BlocProvider(create: (context) => AddNoteCubit(),)],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       theme: ThemeData(
          brightness: Brightness.dark,
         fontFamily: 'Poppins'
       ),
        home:  const NotesView(),

      ),
    );
  }
}
