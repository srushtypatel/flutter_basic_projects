import 'package:flutter/material.dart';
import 'package:food_app/screens/FAQ.dart';
import 'package:food_app/screens/about.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/signin.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  final List _settinglist = [
    [Icon(Icons.crisis_alert), "About", Icon(Icons.arrow_forward_ios)],
    [Icon(Icons.inbox_rounded), "FAQ", Icon(Icons.arrow_forward_ios)],
    [
      Icon(Icons.privacy_tip),
      "Privacy & Security",
      Icon(Icons.arrow_forward_ios)
    ],
    [Icon(Icons.help), "Help", Icon(Icons.arrow_forward_ios)],
    [Icon(Icons.logout), "Log out", Icon(Icons.arrow_forward_ios)]
  ];

  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Log Out',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Cancel',
                style: TextStyle(
                    color: Color.fromARGB(255, 57, 82, 163), fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();

                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => signin()));
              },
              child: Text(
                'Log Out',
                style: TextStyle(
                    color: Color.fromARGB(255, 57, 82, 163), fontSize: 16),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
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
                      width: 120,
                    ),
                    Container(
                      child: Text(
                        "Setting",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Expanded(
                  child: SizedBox(
                    height: 200,
                    child: ListView.separated(
                      itemCount: _settinglist.length,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 10,
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                            height: 1,
                          ),
                        );
                      },
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: _settinglist[index][0],
                          title: Text(
                            _settinglist[index][1],
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing: _settinglist[index][2],
                          onTap: () {
                            if (_settinglist[index][1] == "About") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => about_page()));
                            }
                            if (_settinglist[index][1] == "FAQ") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FAQ_page()));
                            }
                            if (_settinglist[index][1] == "Log out") {
                              _showLogoutDialog();
                            }
                          },
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
