import 'package:flutter/material.dart';
import 'package:food_app/screens/setting.dart';

class about_page extends StatefulWidget {
  const about_page({super.key});

  @override
  State<about_page> createState() => _about_pageState();
}

class _about_pageState extends State<about_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40),
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
                      "About",
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
