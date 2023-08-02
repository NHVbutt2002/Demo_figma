import 'dart:async';
import 'package:demolocal1/SC4.dart';
import 'package:flutter/material.dart';

class SC3 extends StatefulWidget {
  const SC3({super.key});

  @override
  State<SC3> createState() => _SC3State();
}

class _SC3State extends State<SC3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 100)),
        Image.asset('assets/SC2.jpg'),
        SizedBox(
          height: 16,
        ),
        Text("Find a course \n      for you",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: 16,
        ),
        Text(
          "Quarantine is the perfect time to spend your \n day learning something new, from anywhere!",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Image.asset('assets/Pagination1.jpg'),
        SizedBox(
          height: 120,
        ),
        Container(
          height: 50,
          width: 400,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/SC4');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffE3562A),
              ),
              child: Text("Next",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ))),
        )
      ]),
    );
  }
}
