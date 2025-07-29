import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget{
  const NotesScreen ({super.key});

  @override
  State<StatefulWidget> createState()=> _NotesScreenState();
}
 class _NotesScreenState extends State<NotesScreen>{



  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Notes',
          style: TextStyle(
            fontFamily: 'Jersey20',
            fontSize: 20,
            color: Colors.white,
            shadows: [
              Shadow(offset: Offset(0,0),blurRadius: 10)
            ],           
           ),
          ),
         
        ),
    );
  }
}