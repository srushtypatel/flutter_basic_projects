import 'package:flutter/material.dart';
import 'package:food_firebase/pages/detail.dart';
import 'package:food_firebase/widgets/widgets.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  bool icecream = false, pizza = false, salad = false, burger = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(
        top: 50,
        left: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Shivam,",
                  style: appwidgets.boldtextfieldstyle(),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Delicious Food",
              style: appwidgets.headertextfieldstyle(),
            ),
            Text(
              "Discover And Get Great Food",
              style: appwidgets.lighttextfieldstyle(),
            ),
            SizedBox(
              height: 20,
            ),
            showItem(),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (contex) => details()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/salad2.png',
                                height: 170,
                                width: 170,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Vaggie Taco Hash",
                                style: appwidgets.semiboldtextfieldstyle(),
                              ),
                              Text(
                                "Fresh And Healthy ",
                                style: appwidgets.semilighttextfieldstyle(),
                              ),
                              Text(
                                "\$28",
                                style: appwidgets.pricetextfieldstyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/salad4.png',
                                height: 170,
                                width: 170,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Mix Weg Salad",
                                style: appwidgets.semiboldtextfieldstyle(),
                              ),
                              Text(
                                "Spist With Onion",
                                style: appwidgets.semilighttextfieldstyle(),
                              ),
                              Text(
                                "\$25",
                                style: appwidgets.pricetextfieldstyle(),
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5.0,
                    child: Container(
                        child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/salad4.png",
                            height: 130,
                            width: 130,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Mediterranean Chickpea Salad",
                                  style: appwidgets.semiboldtextfieldstyle(),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "honey goot cheese",
                                  style: appwidgets.lighttextfieldstyle(),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$25",
                                  style: appwidgets.semiboldtextfieldstyle(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5.0,
                    child: Container(
                        child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/salad2.png",
                            height: 130,
                            width: 130,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Veggie Taco Hash",
                                  style: appwidgets.semiboldtextfieldstyle(),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Fresh And Healthy",
                                  style: appwidgets.lighttextfieldstyle(),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$28",
                                  style: appwidgets.semiboldtextfieldstyle(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: icecream ? Colors.black : Color(0xFFfef7ff),
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  'assets/ice-cream.png',
                  color: icecream ? Color(0xFFfef7ff) : Colors.black,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                )),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: pizza ? Colors.black : Color(0xFFfef7ff),
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  'assets/pizza.png',
                  color: pizza ? Color(0xFFfef7ff) : Colors.black,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                )),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: salad ? Colors.black : Color(0xFFfef7ff),
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  'assets/salad.png',
                  color: salad ? Color(0xFFfef7ff) : Colors.black,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                )),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {});
          },
          child: Container(
            margin: EdgeInsets.only(right: 20),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  decoration: BoxDecoration(
                      color: burger ? Colors.black : Color(0xFFfef7ff),
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/burger.png',
                    color: burger ? Color(0xFFfef7ff) : Colors.black,
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
