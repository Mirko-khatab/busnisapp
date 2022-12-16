import 'dart:async';

import 'package:flutter/material.dart';
import 'Phone.dart';

class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Phone().getAllPhoneName().length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: (Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                          "images/${Phone().getAllPhoneImage()[index]}"),
                      fit: BoxFit.contain,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${Phone().getAllPhoneName()[index]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.03,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber[900],
                          ),
                          child: Center(
                            child: Text(
                              "${Phone().getAllPhonePrice()[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.018),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            )),
          );
        }));
    ;
  }
}
