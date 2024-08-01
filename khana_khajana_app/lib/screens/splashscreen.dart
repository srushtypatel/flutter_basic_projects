import 'dart:async';

import 'package:flutter/material.dart';
import 'package:khana_khajana_app/main.dart';
import 'package:khana_khajana_app/screens/login.dart';
import 'package:lottie/lottie.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => Login_page())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 2000,
            ),
            Lottie.asset('assets/splash.json', height: 350, width: 350),
            // Text("fbdsjbf")
          ],
        ),
      ),
    );
  }
}
