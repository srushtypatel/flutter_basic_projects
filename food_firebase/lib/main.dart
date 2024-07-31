import 'package:flutter/material.dart';
import 'package:food_firebase/pages/bottomnav.dart';
import 'package:food_firebase/pages/homepage.dart';
import 'package:food_firebase/pages/login.dart';
import 'package:food_firebase/pages/onboard.dart';
import 'package:food_firebase/pages/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboard(),
    );
  }
}
