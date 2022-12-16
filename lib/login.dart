import 'package:busnisapp/main.dart';
import 'package:busnisapp/solash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String user = "sima";
  String pass = "1234";
  String inpuser = "";
  String inppass = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      //svg image
      Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/login.png'),
          fit: BoxFit.contain,
        )),
      ),
      //fotm login username and password and button
      Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //username
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(0, 5))
                    ]),
                child: TextField(
                  onChanged: (value) {
                    inpuser = value;
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "username",
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              //password
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(0, 5))
                    ]),
                child: TextField(
                  onChanged: (value) {
                    inppass = value;
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "password",
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
              //button
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.085,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink[500],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(0, 5))
                    ]),
                child: TextButton(
                    onPressed: () {
                      if (inpuser == user && inppass == pass) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => solash()));
                      } else {
                        print("error");
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ))
    ]));
  }
}
