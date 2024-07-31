import 'package:flutter/material.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/signin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _signup_controller = TextEditingController();

  final TextEditingController _Email_controller = TextEditingController();

  final TextEditingController _phone_controller = TextEditingController();

  final TextEditingController _address_controller = TextEditingController();

  final TextEditingController _company_controller = TextEditingController();

  // bool _passwordvisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      "SIGN UP",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Let's Get Started",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(children: [
                    TextField(
                      controller: _signup_controller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: "Name",
                          hintStyle: TextStyle(color: Colors.black)),
                      cursorColor: Colors.black,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _Email_controller,
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
                      keyboardType: TextInputType.phone,
                      controller: _phone_controller,
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
                      controller: _address_controller,
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
                      controller: _company_controller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: "Company Name",
                          hintStyle: TextStyle(color: Colors.black)),
                      cursorColor: Colors.black,
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home_screen()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 57, 82, 163)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Allready have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signin()),
                      );
                    },
                    child: Text(
                      " Sign in",
                      style: TextStyle(
                          color: Color.fromARGB(255, 57, 82, 163),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
