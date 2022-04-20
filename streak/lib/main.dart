import 'package:flutter/material.dart';
import 'package:streak/pages/onBoarding.dart';
import 'package:streak/pages/scorecont.dart';
import './pages/SplashScreen.dart';

void main() {
  runApp(Streak());
}

class Streak extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Streak> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scorecont(),
    );
  }
}
