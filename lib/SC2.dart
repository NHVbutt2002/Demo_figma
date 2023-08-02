import 'dart:async';

import 'package:demolocal1/SC3.dart';
import 'package:demolocal1/SC4.dart';
import 'package:flutter/material.dart';

import 'gen/localization/l10n.dart';

class SC2 extends StatefulWidget {
  const SC2({super.key});

  @override
  State<SC2> createState() => _SC2State();
}

class _SC2State extends State<SC2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 100)),
        Image.asset('assets/SC3.jpg'),
        SizedBox(
          height: 16,
        ),
        Text(Str.of(context).splasScreen22,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: 16,
        ),
        Text(
          Str.of(context).splasScreen2,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Image.asset('assets/Pagination.jpg'),
        SizedBox(
          height: 120,
        ),
        Container(
          height: 50,
          width: 400,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/SC3');
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
