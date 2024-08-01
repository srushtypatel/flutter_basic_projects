import 'package:flutter/material.dart';

class Account_page extends StatefulWidget {
  const Account_page({super.key});

  @override
  State<Account_page> createState() => _Account_pageState();
}

class _Account_pageState extends State<Account_page> {
  static const _iconTypes = <Icon>[
    Icon(Icons.star_border_outlined),
    Icon(Icons.favorite_outline),
    Icon(Icons.card_giftcard_outlined),
    Icon(Icons.question_mark),
    Icon(Icons.language),
    Icon(Icons.settings),
    Icon(Icons.logout)
  ];
  List Iconname = [
    "your Rating",
    "Favourite Order",
    "Claim Gift card",
    "frequently Asked Question",
    "language",
    "Setting",
    "Logout",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(180, 126, 35, 1.000),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30, left: 15),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/profile.jpg"),
                                maxRadius: 60,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jully",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Text("jully@gmail.com",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                    Text("8799397167",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 130,
                      width: 200,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite_outline_outlined),
                            Text(
                              "Favourite",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 200,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.attach_money_rounded),
                            Text(
                              "Money",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(

                    // scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Iconname.length,
                    itemBuilder: (cxt, int index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  _iconTypes[index],
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    Iconname[index],
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
