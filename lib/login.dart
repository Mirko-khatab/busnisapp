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
  String user = "bushra";
  String pass = "1234";
  String inpuser = "";
  String inppass = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 130, 179, 207),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://pisces.bbystatic.com/image2/BestBuy_US/dam/pm1-MMT-593442-sm-221003_DER-76842a70-2667-4ffc-aa64-6e75e53e003a.jpg;maxHeight=350;maxWidth=1000"),
                      fit: BoxFit.cover)),
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      //shdow to the container
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ], borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.phone_android,
                        color: Colors.grey[900],
                        size: 40,
                      ),
                      Text(
                        "welcome",
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "to login page  ",
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //login form password and username
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90, left: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1.2,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: TextField(
                        onChanged: (value) {
                          inpuser = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            labelText: "username",
                            hintText: "enter your username"),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: TextField(
                        onChanged: (value) {
                          inppass = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            labelText: "password",
                            hintText: "enter your password"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(20)),
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextButton(
                          onPressed: () {
                            if (inpuser == user && inppass == pass) {
                              // navigate to another page and delete the previous page on the stack
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => solash()),
                                  (route) => false);
                            } else {
                              print("error");
                            }
                          },
                          child: Text(
                            "login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
