import 'package:flutter/material.dart';
import 'package:food_app/screens/home.dart';

class partnertab extends StatelessWidget {
  final _partnerlist = [
    ['assets/image 23.png', "Starbucks"],
    ['assets/image 24.png', "Coca-Cola"],
    ['assets/image 25.png', "McDonalds"],
    ['assets/image 26.png', "Pizza Hut"],
    ['assets/image 27.png', "Skeeter\'s"],
    ['assets/image 28.png', "Lay\'s Wafers"],
    ['assets/image 29.png', "Burger King"],
    ['assets/image 30.png', "KitKat"],
    ['assets/image 31.png', "Subway"],
    ['assets/image 32.png', "Domino\'s"],
    ['assets/image 23.png', "Starbucks"],
    ['assets/image 24.png', "Coca-Cola"],
    ['assets/image 25.png', "McDonalds"],
    ['assets/image 26.png', "Pizza Hut"],
    ['assets/image 27.png', "Skeeter\'s"],
    ['assets/image 28.png', "Lay\'s Wafers"],
    ['assets/image 29.png', "Burger King"],
    ['assets/image 30.png', "KitKat"],
    ['assets/image 31.png', "Subway"],
    ['assets/image 32.png', "Domino's"],
  ];

  partnertab({super.key});

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
                            builder: (context) => Home_screen(),
                          ),
                        );
                      },
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Spacer(),
                    Container(
                      child: Text(
                        "Partners",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: _partnerlist.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(_partnerlist[index][0]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _partnerlist[index][1],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
