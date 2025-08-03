import 'package:devtools/Screens/notes_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget{
  const WelcomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _WelcomescreenState();
}

 class _WelcomescreenState extends State<WelcomeScreen>with TickerProviderStateMixin{
  late final AnimationController _textController;

  @override
  void initState(){
    super.initState();
    _textController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500)
    );

  }

  
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

 
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
                    OutlinedButton(
                    onPressed:() {Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                      pageBuilder:(context, animation, secondaryAnimation) => const NotesScreen(),
                      )
                     );
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white54, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 42,
                        vertical: 12,
                      )
                    ),                    
                    child: const Text('Get Started',
                     style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Jersey20',
                      fontSize: 32,
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          blurRadius: 10,
                           offset: Offset(0, 0)
                        )
                      ],
                     ),
                    )
                   ),
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


