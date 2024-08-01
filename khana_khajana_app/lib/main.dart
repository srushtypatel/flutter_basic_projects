import 'package:flutter/material.dart';
import 'package:khana_khajana_app/screens/login.dart';
import 'package:khana_khajana_app/screens/register_page.dart';
import 'package:khana_khajana_app/screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}
