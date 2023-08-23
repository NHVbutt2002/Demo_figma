import 'package:flutter/material.dart';

class TestQuestion extends StatefulWidget {
  const TestQuestion({super.key});

  @override
  State<TestQuestion> createState() => _TestQuestionState();
}

class _TestQuestionState extends State<TestQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_sharp)),
            const Center(
              child: Text("1 of 20",
                  style: TextStyle(
                    fontSize: 16,
                  )),
            ),
            const Center(
              child: Text("       Which tag for \n the biggest header?",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff78746D)),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                        color: const Color(0xffF8F2EE),
                        child: Image.asset('assets/Sc21.png')),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/TestQuestion');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: Color(0xffBEBAB3))),
                  ),
                ),
                child: const Text("A. <h5>",
                    style: TextStyle(color: Colors.black)),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/TestQuestion');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(color: Color(0xffBEBAB3))),
                  ),
                ),
                child:
                    const Text("B. <p>", style: TextStyle(color: Colors.black)),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/TestQuestion');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(color: Color(0xffBEBAB3))),
                  ),
                ),
                child: const Text("C. <h1>",
                    style: TextStyle(color: Colors.black)),
              ),
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
                    Navigator.of(context).pushNamed('/Results2');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffE3562A),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
