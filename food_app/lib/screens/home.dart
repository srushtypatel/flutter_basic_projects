import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/screens/notification.dart';
import 'package:food_app/screens/partner.dart';
import 'package:food_app/screens/products.dart';
import 'package:food_app/screens/profile.dart';
import 'package:food_app/screens/setting.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  final TextEditingController _searchController = TextEditingController();
  int _selectedIndex = 0;

  static const List<BottomNavigationBarItem> _navigationBarItems =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.view_module_rounded),
      label: 'Products',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people),
      label: 'Partners',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_sharp),
      label: 'Profile',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeTab(),
    productstab(),
    partnertab(),
    profile_page(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: _pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            items: _navigationBarItems,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  final _home_list = [
    ['assets/Rectangle 14.png', 'Food'],
    ['assets/Rectangle 15.png', 'Vegetable'],
    ['assets/Rectangle 14 (1).png', 'Baverages'],
    ['assets/Rectangle 15 (1).png', 'Meat'],
    ['assets/Rectangle 14 (2).png', 'Food'],
    ['assets/Rectangle 15 (2).png', 'Vegetable'],
    ['assets/Rectangle 14 (1).png', 'Baverages'],
    ['assets/Rectangle 15 (1).png', 'Meat'],
    ['assets/Rectangle 14.png', 'Food'],
    ['assets/Rectangle 15.png', 'Vegetable'],
    ['assets/Rectangle 14 (1).png', 'Baverages'],
    ['assets/Rectangle 15 (1).png', 'Meat'],
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "John Doe",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => notification_page(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.notifications,
                          size: 28,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => setting(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.settings,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            child: TextField(
              controller: SearchController(),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                hintText: "Search...",
                suffixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              cursorColor: Colors.black,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Today's USD Rate:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: Offset(2.0, 5.0),
                          blurStyle: BlurStyle.normal,
                          blurRadius: 5.0),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 12.0),
                    child: Text("147.50"),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            child: Image.asset('assets/image 10.png'),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Brands",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "See More",
                style: TextStyle(),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 30,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: _home_list.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            _home_list[index][0],
                            fit: BoxFit.cover,
                            cacheHeight: 2000,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          _home_list[index][1],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
