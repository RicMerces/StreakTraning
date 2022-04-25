import 'package:flutter/material.dart';
import 'package:streak/pages/scorecont.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  void abrirScore() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Scorecont(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2C2C),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/logoStreak.png',
              height: 250,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 10),
              child: Text(
                'Your training sequence',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 33, right: 33),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed congue nibh eu est elementum, id luctus est pulvinar. In pulvinar non risus at efficitur.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(186, 186, 186, 100),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: ElevatedButton(
                onPressed: () => abrirScore(),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xffF89B29), Color(0xffFF0F7B)]),
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    width: 200,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      'Score',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
