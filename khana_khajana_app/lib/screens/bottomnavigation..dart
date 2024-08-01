import 'package:flutter/material.dart';
import 'package:khana_khajana_app/screens/account.dart';
import 'package:khana_khajana_app/screens/homeScreen.dart';
import 'package:khana_khajana_app/screens/photo.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int _selectedindex = 0;
  void _onclicked(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List name = [HomeScreen(), Photo_page(), Account_page()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onclicked,
          backgroundColor: Color.fromRGBO(180, 126, 35, 1.000),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Color.fromRGBO(180, 126, 35, 1.000),
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_a_photo,
                color: Colors.white,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
              label: '',
            ),
          ],
        ),
        body: name.elementAt(_selectedindex));
  }
}
