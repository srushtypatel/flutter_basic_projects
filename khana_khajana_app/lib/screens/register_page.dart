import 'package:flutter/material.dart';
import 'package:khana_khajana_app/screens/bottomnavigation..dart';
import 'package:khana_khajana_app/screens/homeScreen.dart';

class register_page extends StatefulWidget {
  const register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
  bool _selected = true;
  bool _confirm = true;
  final _registerkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 170),
          child: Container(
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
                        "Create Account",
                        style: TextStyle(
                            color: Color.fromRGBO(180, 126, 35, 1.000),
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Form(
                    key: _registerkey,
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
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  suffixIcon: Icon(Icons.email)),
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
                              obscureText: _selected,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
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
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Home_page()));
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have account?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color:
                                          Color.fromRGBO(180, 126, 35, 1.000)),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_registerkey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Home_page()));
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
        ),
      ),
    );
  }
}
