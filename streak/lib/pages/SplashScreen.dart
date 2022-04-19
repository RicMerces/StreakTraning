import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2C2C),
      body: Center(
        child: Image.asset(
          'assets/img/logoStreak.png',
          height: 300,
        ),
      ),
    );
  }
}
