import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_firebase/pages/homepage.dart';
import 'package:food_firebase/pages/order.dart';
import 'package:food_firebase/pages/profile.dart';
import 'package:food_firebase/pages/wallet.dart';

class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  int _currentIndex = 0;

  late List<Widget> pages;
  late Widget currentpage;
  late home_page homepage;
  late Order orderpage;
  late Profile profilepage;
  late Wallet walletepage;

  @override
  void initState() {
    homepage = home_page();
    orderpage = Order();
    profilepage = Profile();
    walletepage = Wallet();
    pages = [homepage, orderpage, profilepage, walletepage];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Color(0xFFfef7ff),
          color: Colors.black,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.wallet_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.person_2_outlined,
              color: Colors.white,
            )
          ]),
      body: pages[_currentIndex],
    );
  }
}
