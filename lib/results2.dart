import 'package:flutter/material.dart';

class Results2 extends StatefulWidget {
  const Results2({super.key});

  @override
  State<Results2> createState() => _Results2State();
}

class _Results2State extends State<Results2> {
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
                const Text("Results",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
          Image.asset('assets/Sc22.png'),
          const Column(
            children: [
              Text("Congratulations",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Congratulations for getting \n   all the answers correct!",
                  style: TextStyle(fontSize: 14, color: Color(0xff78746D))),
            ],
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/Saved');
              },
              child: Text('Next')),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 100),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xff65AAEA),
                          borderRadius: BorderRadius.circular(5)),
                      width: 40,
                      height: 40,
                      child: Image.asset('assets/SC23.png')),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xff65AAEA),
                          borderRadius: BorderRadius.circular(5)),
                      width: 40,
                      height: 40,
                      child: Image.asset('assets/SC24.png')),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xff65AAEA),
                          borderRadius: BorderRadius.circular(5)),
                      width: 40,
                      height: 40,
                      child: Image.asset('assets/SC25.png'))
                ],
              ),
            ),
          )
        ])));
  }
}
