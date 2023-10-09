import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:task1_getx/Pages/login_page.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
      backgroundColor: Colors.deepPurple,
      animationDuration: const Duration(seconds: 2),
      splash:const Icon(Icons.icecream,size: 300,color: Colors.white,),
      splashTransition: SplashTransition.sizeTransition,
      nextScreen:const LoginPage()
    );
  }
}
