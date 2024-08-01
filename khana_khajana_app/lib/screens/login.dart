import 'package:flutter/material.dart';
import 'package:khana_khajana_app/screens/bottomnavigation..dart';
import 'package:khana_khajana_app/screens/homeScreen.dart';
import 'package:khana_khajana_app/screens/register_page.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  bool _selected = true;
  bool _confirm = true;
  final _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Welcome to",
                    style: TextStyle(
                        color: Color.fromRGBO(180, 126, 35, 1.000),
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "please Enter your Information and",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "Enjoy your Food :)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty && value != null) {
                          return 'Please Enter valid User name!';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "User Name",
                          hintStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          suffixIcon: Icon(Icons.person)),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty && value != null) {
                              return 'Please Enter correct password!';
                            } else {
                              return null;
                            }
                          },
                          obscureText: _selected,
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              suffixIcon: _selected == false
                                  ? IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _selected = true;
                                        });
                                      },
                                      icon: Icon(Icons.visibility))
                                  : IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _selected = false;
                                        });
                                      },
                                      icon: Icon(Icons.visibility_off))),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty && value != null) {
                              return 'Please Enter correct password!';
                            } else {
                              return null;
                            }
                          },
                          obscureText: _confirm,
                          decoration: InputDecoration(
                              hintText: " Confirm Password",
                              hintStyle: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              suffixIcon: _confirm == false
                                  ? IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _confirm = true;
                                        });
                                      },
                                      icon: Icon(Icons.visibility))
                                  : IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _confirm = false;
                                        });
                                      },
                                      icon: Icon(Icons.visibility_off))),
                        ))
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const Home_page()));
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text(
                      'Login Sucessfully!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )));
                  }
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(180, 126, 35, 1.000)),
                    elevation: MaterialStatePropertyAll(15)),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const register_page()));
                  }
                },
                child: Text(
                  "Registration",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(180, 126, 35, 1.000)),
                    elevation: MaterialStatePropertyAll(15)),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
