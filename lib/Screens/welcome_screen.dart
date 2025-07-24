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
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
              top: 24,
              left: 24,
              child: Text(
                'Welcome \n to \nDevtools',
                style: TextStyle(
                  fontFamily: 'Jersey20',
                  fontSize: 52,
                  color: Colors.white,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(blurRadius: 10,offset: Offset(0,0))
                  ]
                ),
              )
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   const SizedBox(height: 120,),
                   
                  ],
                ),
              ),
            )
          ],
        )
      )
    );
  }
}


