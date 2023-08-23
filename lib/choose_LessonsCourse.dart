import 'package:flutter/material.dart';

class LessonsCourse extends StatefulWidget {
  const LessonsCourse({super.key});

  @override
  State<LessonsCourse> createState() => _LessonsCourseState();
}

class _LessonsCourseState extends State<LessonsCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
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
                  const Text("HTML",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                        color: const Color(0xffF8F2EE),
                        child: Image.asset('assets/sc16.png')),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    height: 50,
                    color: const Color(0xffF8F2EE),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(child: Image.asset('assets/Playicon.png')),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("HTML",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Advanced web applications",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff78746D)))
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/SC17.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Main Tags",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        Column(
                          children: [
                            Container(
                                width: 222,
                                height: 11,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white)),
                            Container(
                                width: 222,
                                height: 11,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xff94c0e9)))
                          ],
                        )
                      ],
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/Sc18.png'),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Tags For Header",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                          Column(
                            children: [
                              Container(
                                  width: 222,
                                  height: 11,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.white)),
                              Stack(
                                children: [
                                  Container(
                                      width: 222,
                                      height: 11,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Color(0xffFFF5EE))),
                                  Container(
                                      width: 90.0481948852539,
                                      height: 11,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Color(0xff94c0e9))),
                                ],
                              )
                            ],
                          ),
                        ]),
                  ]),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/CourseLesson");
                },
                child: Text('Next'))
          ],
        ),
      ),
    );
  }
}
