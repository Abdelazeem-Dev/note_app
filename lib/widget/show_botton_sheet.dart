import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../add_note_cubits/add_note_cubit.dart';
import 'add_note_from.dart';
import 'custom_botton.dart';
import 'custom_text_field.dart';

class ShowBottonSheet extends StatelessWidget {
  const ShowBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),

        child: BlocConsumer(
          builder: (BuildContext context, state) {
            return  ModalProgressHUD(
                inAsyncCall:  state is AddNoteLoading ? true : false,
            child: AddNoteForm());
          },
          listener: (BuildContext context, state) {
            if (state is AddNoteFailure) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMessage)));
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },

        ),
      ),
    );
  }
}
