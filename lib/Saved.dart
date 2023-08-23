import 'package:flutter/material.dart';

class Saved2 extends StatefulWidget {
  const Saved2({super.key});

  @override
  State<Saved2> createState() => _Saved2State();
}

class _Saved2State extends State<Saved2> {
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
          Image.asset('assets/SC28.png'),
          const Column(
            children: [
              Text(" Course was saved",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20,
              ),
              Text("You can find this course in \nyour profile",
                  style: TextStyle(fontSize: 14, color: Color(0xff78746D))),
            ],
          ),
          Container(
              height: 50,
              width: 400,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text('Continue',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.of(context).pushNamed('/NotPayment2');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffE3562A),
                ),
              )),
        ])));
  }
}
