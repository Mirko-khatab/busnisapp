import 'dart:ffi';

import 'package:busnisapp/About.dart';
import 'package:busnisapp/Iphone.dart';
import 'package:busnisapp/huawei.dart';
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

String _itemName = "";

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  Widget build(BuildContext context) {
    //array _itemName to store the name of the list
    //put the iphone class

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.pink[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.1,
                      backgroundImage: AssetImage('images/profile.jpeg'),
                    ),
                    Text(
                      "Sima jalal",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Sima@gmail.com ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => solash()));
              },
            ),
            ListTile(
              title: Text("About as"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
            ),
            ListTile(
              title: Text("Logout"),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.pink[200],
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text('Onlineshop'),
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
          height: MediaQuery.of(context).size.height * 0.08,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _itemName = "All";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'ALL',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                  width: 120,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _itemName = "kids";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Kids',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                  width: 120,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _itemName = "Women";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Women',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                  width: 120,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _itemName = "Men";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Men',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
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
                topLeft: Radius.circular(70),
                topRight: Radius.circular(70),
              ),
              color: Colors.white,
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.612,
            // child:
            // _itemName == "iphone"
            //     ? iphone()
            //     : _itemName == "samsung"
            //         ? samsung()
            //         : _itemName == "huawei"
            //             ? huawei()
            //             : All()
          ),
        ),
      ]),
    );
    print("_itemName --------->${_itemName}");
  }
}
