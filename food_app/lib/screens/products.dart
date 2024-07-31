import 'package:flutter/material.dart';
import 'package:food_app/screens/home.dart';

class productstab extends StatelessWidget {
  final List _category_list = [
    ['assets/image 11.png', "Vegetable"],
    ['assets/image 12.png', "Fruits"],
    ['assets/image 13.png', "Meat"],
    ['assets/image 14.png', "Milk & Egg"],
    ['assets/image 15.png', "Fish"],
    ['assets/image 16.png', "Drinks"],
    ['assets/image 17.png', "Sea Food"],
    ['assets/image 18.png', "Cake"],
    ['assets/image 19.png', "Bakery"],
    ['assets/image 20.png', "Biscuits"],
    ['assets/image 21.png', "Ice Cream"],
    ['assets/image 22.png', "Juices"],
    ['assets/image 11.png', "Vegetable"],
    ['assets/image 12.png', "Fruits"],
    ['assets/image 13.png', "Meat"],
    ['assets/image 14.png', "Milk & Egg"],
    ['assets/image 15.png', "Fish"],
    ['assets/image 16.png', "Drinks"],
    ['assets/image 17.png', "Sea Food"],
    ['assets/image 18.png', "Cake"],
    ['assets/image 19.png', "Bakery"],
    ['assets/image 20.png', "Biscuits"],
    ['assets/image 21.png', "Ice Cream"],
    ['assets/image 22.png', "Juices"],
  ];
  productstab({super.key});

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
                        "catagories",
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
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 30,
                  ),
                  itemCount: _category_list.length,
                  itemBuilder: (context, index) {
                    return Card(
                      // shadowColor: Colors.black,
                      surfaceTintColor: Colors.black,
                      color: Color.fromARGB(255, 245, 238, 238),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(_category_list[index][0]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _category_list[index][1],
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
