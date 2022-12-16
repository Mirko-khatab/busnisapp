import 'dart:ffi';

import 'package:busnisapp/Iphone.dart';
import 'package:busnisapp/login.dart';
import 'package:busnisapp/samsung.dart';
import 'package:busnisapp/solash.dart';
import 'package:flutter/material.dart';
// import 'package:gashbush/solash.dart';
import 'Iphone.dart';
import 'All.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: login(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

String listName = "";
Color color1 = Colors.grey[500]!;
Color color2 = Colors.grey[500]!;

Color color3 = Colors.grey[500]!;

Color color4 = Colors.grey[500]!;

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  Widget build(BuildContext context) {
    //array listName to store the name of the list
    //put the iphone class

    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Dash bourd'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Column(children: [
        //text input field for search
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.grey[300]!,
                ),
              ),
            ),
          ),
        ),
        //list of categories
        Container(
          height: MediaQuery.of(context).size.height * 0.04,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    listName = "All";
                    color1 = Colors.white;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'ALL',
                    style: TextStyle(fontSize: 15, color: color1),
                  )),
                  width: 120,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    listName = "iphone";
                    color2 = Colors.white;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Iphone',
                    style: TextStyle(fontSize: 15, color: color2),
                  )),
                  width: 120,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    listName = "samsung";
                    color3 = Colors.white;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Samsung',
                    style: TextStyle(fontSize: 15, color: color3),
                  )),
                  width: 120,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    listName = "huawei";
                    color4 = Colors.white;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Huawei',
                    style: TextStyle(fontSize: 15, color: color4),
                  )),
                  width: 120,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.grey[300],
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.66,
              child: listName == "iphone"
                  ? iphone()
                  : listName == "samsung"
                      ? samsung()
                      : listName == "huawei"
                          ? Text('huawei')
                          : All()),
        ),
      ]),
    );
    print("listname --------->${listName}");
  }
}
