import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_app/screens/signin.dart';
import 'package:food_app/screens/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Signup()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 57, 82, 163),
        body: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              height: 350,
              child: Image.asset('assets/splashmain.png'),
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              child: Image.asset('assets/ff 1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
