import "package:flutter/material.dart";
import 'Phone.dart';

class samsung extends StatefulWidget {
  const samsung({super.key});

  @override
  State<samsung> createState() => _samsungState();
}

class _samsungState extends State<samsung> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Phone().iphone.length,
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
                      image: AssetImage("images/iphone14.png"),
                      fit: BoxFit.contain,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${Phone().iphone[index]}",
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
                              "price: 2000",
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
  }
}
