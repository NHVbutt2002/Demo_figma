import 'package:flutter/material.dart';

class CourseTests extends StatefulWidget {
  const CourseTests({super.key});

  @override
  State<CourseTests> createState() => _CourseTestsState();
}

class _CourseTestsState extends State<CourseTests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Column(children: [
              Container(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_rounded)),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text("HTML",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              ),
              const Text("Tags For Headers",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              const Text("3 of 11 lessons",
                  style: TextStyle(
                    fontSize: 14,
                  )),
              Container(
                height: 50,
                margin: const EdgeInsets.all(12),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: double.infinity,
                        width: 100,
                        color: Color(0xffF8F2EE),
                        child: const Center(
                          child: Text("Lessons",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: 100,
                        color: const Color(0xffF8F2EE),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Center(
                          child: Text("Tests",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: double.infinity,
                        color: const Color(0xffF8F2EE),
                        child: const Center(
                          child: Text("Discuss",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff78746D)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(child: Image.asset('assets/SC20.png')),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Quiz 1",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffE3562A),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Tags For Headers",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "Let’s put your memory on this topic test. Solve tasks and check your knowledge.",
                              style: TextStyle(
                                color: Color(0xff78746D),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side:
                                    const BorderSide(color: Color(0xffE3562A))),
                          ),
                        ),
                        child: const Text("Begin",
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
            ])));
  }
}
