import 'package:devtools/Providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotesScreen extends StatefulWidget{
  const NotesScreen ({super.key});

  State<StatefulWidget> createState()=> _NotesScreenState();
}
 class _NotesScreenState extends State<NotesScreen>{

  void _backButton() async{
   await Provider.of<AuthProvider>(context, listen: false).logout();

  }


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
          actions: [IconButton(
            onPressed: _backButton,
            icon: Icon(Icons.arrow_back)
          ),
         ] 
        ),
    );
  }
}