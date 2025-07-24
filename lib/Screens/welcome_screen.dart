import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget{
  const WelcomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _WelcomescreenState();
}

 class _WelcomescreenState extends State<WelcomeScreen>{
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 26, 26, 100),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome\nto\nDevtools',
              style: TextStyle(
                fontFamily: 'Jersey20',
                fontSize: 64,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40,),
             
             Row(
             children: [

             ],
            ),
          ],
        ),
      ),
    );
  }
}


