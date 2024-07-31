import 'package:flutter/material.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/signup.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  final TextEditingController _signin_controller = TextEditingController();
  final TextEditingController _pass_controller = TextEditingController();
  bool _passwordvisible = false;

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
                      height: 150,
                    ),
                    Text(
                      "SIGN IN",
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
                height: 60,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(children: [
                    TextField(
                      controller: _signin_controller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: "Enter User Name",
                          hintStyle: TextStyle(color: Colors.black)),
                      cursorColor: Colors.black,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: _pass_controller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passwordvisible = !_passwordvisible;
                                });
                              },
                              icon: Icon(_passwordvisible
                                  ? Icons.visibility
                                  : Icons.visibility_off))),
                      cursorColor: Colors.black,
                      obscureText: !_passwordvisible,
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 50,
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
                      "SIGN IN",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      " Sign up",
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
