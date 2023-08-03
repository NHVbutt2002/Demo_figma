import 'dart:async';
import 'package:demolocal1/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SC4 extends StatefulWidget {
  const SC4({super.key});

  @override
  State<SC4> createState() => _SC4State();
}

class _SC4State extends State<SC4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 100)),
          Image.asset('assets/SC1.jpg'),
          SizedBox(
            height: 50,
          ),
          Text("Improve your skills",
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
            height: 115,
          ),
          Container(
            height: 50,
            width: 400,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
                onPressed: () async {
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.setBool('show', true);
                  Navigator.of(context).pushNamed('/ScLogin');
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
      ),
    );
  }
}
