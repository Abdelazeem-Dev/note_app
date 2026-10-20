import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding:  EdgeInsets.only(left: 16,top:24,bottom: 24),
        decoration: BoxDecoration(
          color: Color(0xffFFCB7A),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            ListTile(
              title:Text( "Flutter Note",style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),) ,
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Learn to build Flutter App with Tharwat Samy',style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffC29359)
                ),),
              ),
              trailing: IconButton(onPressed: () {  }, icon: FaIcon( FontAwesomeIcons.trash,color: Colors.black,size: 30)),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('May 21,2022',style: TextStyle(
                fontSize: 16,
                color: Color(0xffC29359)
              ),),
            )
          ],
        ),
      ),
    );
  }
}
