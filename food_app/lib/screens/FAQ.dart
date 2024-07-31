import 'package:flutter/material.dart';
import 'package:food_app/screens/setting.dart';

class FAQ_page extends StatefulWidget {
  const FAQ_page({super.key});

  @override
  State<FAQ_page> createState() => _FAQ_pageState();
}

class _FAQ_pageState extends State<FAQ_page> {
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => setting()));
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 120,
                  ),
                  Container(
                    child: Text(
                      "FAQ",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Lorem has been the industry's standard dummy text ever. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 ",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    " from 45 BC, looked up one of the more obscure Latin words,Contrary to popular belief,classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one oor sit amet.., comes from a line in section 1.10.32.",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    " from 45 BC, looked up one of the more obscure Latin words,Contratin professor at Hampden-Sydney College in Virginia, looked up one oor sit amet.., comes from a line in section 1.10.32.",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
