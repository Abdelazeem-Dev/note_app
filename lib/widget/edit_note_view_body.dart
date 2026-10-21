import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal:4),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppbar(title: ' Edit Note', icon: Icons.check),
          const SizedBox(height: 60),
          CustomTextField(hintText: 'title'),
          const SizedBox(height: 17),
          CustomTextField(hintText: 'content', maxLines: 5),
        ],
      ),
    );
  }
}
