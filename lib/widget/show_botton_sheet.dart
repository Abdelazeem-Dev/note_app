import 'package:flutter/material.dart';

import 'custom_botton.dart';
import 'custom_text_field.dart';

class ShowBottonSheet extends StatelessWidget {
  const ShowBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),

        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm>
{
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode validateMode = AutovalidateMode.disabled;
   String ? title ,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: validateMode,
      child: Column(
        children: [
          const SizedBox(height: 32,),
         CustomTextField(hintText: 'title',
             onSaved: (value) {
            title =value;
         }),
          const SizedBox(height: 16,),
          CustomTextField(hintText: 'content',maxLines: 5,
          onSaved: (value){
            subTitle =value;
          }),
          const SizedBox(height: 16,),
           CustomBotton(onTap: (){
             if (formKey.currentState!.validate()) {
               formKey.currentState!.save();
             } else {
               validateMode = AutovalidateMode.always;
               setState(() {
               });
             }
           },),
          const SizedBox(height: 32,),

        ],
      ),
    );
  }
}
