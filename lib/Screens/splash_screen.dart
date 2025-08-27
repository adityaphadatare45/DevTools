import 'dart:async';
import 'package:devtools/Screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _startAnimations();

    // Navigate after 3 seconds
    Timer(const Duration(seconds: 3), _goToWelcomeScreen);
  }

  void _goToWelcomeScreen() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (_, __, ___) => const WelcomeScreen(),
        transitionsBuilder: (_, animation, __, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end)
              .chain(CurveTween(curve: Curves.easeInOut));
          return SlideTransition(position: animation.drive(tween), child: child);
        },
      ),
    );
  }

  void _startAnimations() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final word = "DevTools";

    return Scaffold(
      backgroundColor: Colors.black, // Dark mode
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Animate each letter
            Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(word.length, (index) {
                final animation = CurvedAnimation(
                  parent: _controller,
                  curve: Interval(
                    index / word.length,
                    (index + 1) / word.length,
                    curve: Curves.easeOut,
                  ),
                );

                return AnimatedBuilder(
                  animation: animation,
                  builder: (context, child) {
                    return Opacity(
                      opacity: animation.value,
                      child: Transform.translate(
                        offset: Offset(0, (1 - animation.value) * 30), // slide up
                        child: child,
                      ),
                    );
                  },
                  child: Text(
                    word[index],
                    style: const TextStyle(
                      fontFamily: 'Jersey20',
                      fontSize: 64,
                      color: Colors.white,
                      letterSpacing: 2,
                      shadows: [
                        Shadow(blurRadius: 12, offset: Offset(0, 0)),
                      ],
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 50),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
