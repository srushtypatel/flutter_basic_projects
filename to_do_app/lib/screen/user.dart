import 'package:flutter/material.dart';
import 'package:to_do_app/screen/home.dart';

class User_page extends StatefulWidget {
  const User_page({super.key});

  @override
  State<User_page> createState() => _User_pageState();
}

class _User_pageState extends State<User_page> {
  final TextEditingController _p_name_controller = TextEditingController();
  final TextEditingController _p_email_controller = TextEditingController();
  final TextEditingController _p_phone_controller = TextEditingController();
  final TextEditingController _p_address_controller = TextEditingController();
  final TextEditingController _p_customer_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
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
                                  builder: (context) => HomePage()));
                        },
                        child: Icon(Icons.arrow_back_ios)),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      child: Text(
                        "Profile",
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
              CircleAvatar(
                maxRadius: 70,
                backgroundImage: AssetImage('assets/main_avtar.pngs'),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: _p_name_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: "Full Name",
                    hintStyle: TextStyle(color: Colors.black)),
                cursorColor: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _p_email_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black)),
                cursorColor: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _p_phone_controller,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: "Phone Number",
                    hintStyle: TextStyle(color: Colors.black)),
                cursorColor: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _p_address_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: "Address",
                    hintStyle: TextStyle(color: Colors.black)),
                cursorColor: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _p_customer_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: "Type of Customer",
                    hintStyle: TextStyle(color: Colors.black)),
                cursorColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
