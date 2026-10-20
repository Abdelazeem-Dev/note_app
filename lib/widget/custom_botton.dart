import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 65,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: KprimaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(child: Text('Add Note', style: TextStyle(
            fontSize: 24
          ))),
        ),
      ),
    );
  }
}
