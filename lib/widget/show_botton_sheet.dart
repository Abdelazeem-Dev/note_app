import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class ShowBottonSheet extends StatelessWidget {
  const ShowBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          const SizedBox(height: 32,),
         CustomTextField(),
        ],
      ),
    );
  }
}
