import 'dart:async';

import 'package:busnisapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class solash extends StatefulWidget {
  const solash({super.key});

  @override
  State<solash> createState() => _solashState();
}

class _solashState extends State<solash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyApp()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/loding.png',
                fit: BoxFit.cover,
              ),
              Text(
                "Online Shoping",
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 42,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              //splash screen circular progress indicator
              CircularProgressIndicator(
                backgroundColor: Colors.pinkAccent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.pinkAccent),
              ),
            ],
          ),
        ));
  }
}
