import 'package:flutter/material.dart';
import 'package:food_app/screens/home.dart';

class notification_page extends StatefulWidget {
  const notification_page({super.key});

  @override
  State<notification_page> createState() => _notification_pageState();
}

class _notification_pageState extends State<notification_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(children: [
            Container(
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home_screen()));
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    child: Text(
                      "Notifications",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
