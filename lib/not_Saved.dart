import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
          Container(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_rounded)),
                const SizedBox(
                  width: 100,
                ),
                const Text(" Saved",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
          Image.asset('assets/SC26.png'),
          const Column(
            children: [
              Text(" Course not saved",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20,
              ),
              Text("CTry saving the course \n again in a few minutes",
                  style: TextStyle(fontSize: 14, color: Color(0xff78746D))),
            ],
          ),
          Container(
              height: 50,
              width: 400,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text('Continue',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.of(context).pushNamed('/NotPayment');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffE3562A),
                ),
              )),
        ])));
  }
}
