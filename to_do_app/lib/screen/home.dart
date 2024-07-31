import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_app/screen/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> todoList = [
    "check email",
    "exercise",
    "lunch",
    "attend meeting",
    "office",
    "play game",
    "yoga for 30 min",
    "finish presentation",
    "some office work",
    "value",
    "value",
    "value",
  ];

  // List to track the checked state of each todo item
  List<bool> checkedList = List<bool>.generate(77, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEFF5),
      appBar: AppBar(
        backgroundColor: Color(0xFFEEEFF5),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.black,
            ),
            Text(
              "LIST",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => User_page()),
                );
              },
              child: Container(
                height: 40,
                child: Image.asset("assets/main_avtar.png"),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.local_hospital_outlined),
          color: Colors.black,
          iconSize: 50,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "search",
                          hintStyle: TextStyle(fontSize: 18),
                          prefixIcon: Icon(Icons.search),
                          prefixIconConstraints:
                              BoxConstraints(maxHeight: 20, maxWidth: 25),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "All ToDos",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key(todoList[index]),
                    onDismissed: (direction) {
                      setState(() {
                        todoList.removeAt(index);
                        checkedList.removeAt(index);
                      });
                    },
                    background: Container(
                      color: Colors.red,
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 20),
                    ),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: ListTile(
                          onTap: () {
                            setState(() {
                              checkedList[index] = !checkedList[index];
                            });
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          tileColor: Colors.white,
                          leading: IconButton(
                            icon: Icon(
                              checkedList[index]
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank,
                              color: Colors.indigo,
                            ),
                            onPressed: () {
                              setState(() {
                                checkedList[index] = !checkedList[index];
                              });
                            },
                          ),
                          title: Text(
                            todoList[index],
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          trailing: checkedList[index]
                              ? Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        todoList.removeAt(index);
                                        checkedList.removeAt(index);
                                      });
                                    },
                                    color: Colors.white,
                                    iconSize: 20,
                                    icon: Icon(Icons.delete),
                                  ),
                                )
                              : SizedBox()),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
