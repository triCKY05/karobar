import 'package:flutter/material.dart';
import 'package:karobar/Navrail.dart';
import 'dart:async'; // Import the ShopPage widget

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Navrail()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0592F7), // Set the background color here
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Karobar',
                    style: TextStyle(
                      color: Color(0xFF195DAD), // Color for "Karobar"
                    ),
                  ),
                  TextSpan(
                    text: 'Ai',
                    style: TextStyle(
                      color: Color(0xFFFF5757), // Color for "Ai"
                    ),
                  ),
                ],
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
