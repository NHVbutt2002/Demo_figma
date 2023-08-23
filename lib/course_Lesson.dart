import 'package:flutter/material.dart';

class CourseLesson extends StatefulWidget {
  const CourseLesson({super.key});

  @override
  State<CourseLesson> createState() => _CourseLessonState();
}

class _CourseLessonState extends State<CourseLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          children: [
            // ignore: avoid_unnecessary_containers
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
              margin: EdgeInsets.all(12),
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
                      color: Color(0xffF8F2EE),
                      margin: EdgeInsets.symmetric(horizontal: 20),
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
                      color: Color(0xffF8F2EE),
                      child: const Center(
                        child: Text("Discuss",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                        color: Color(0xffE6EDF4),
                        child: Image.asset('assets/SC19.png')),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 13),
                    height: 50,
                    color: Color(0xffE6EDF4),
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
                        Text("Introduction",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "You can launch a new career in web develop- ment today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust. Once the form data has been validated on the client-side, it is okay to submit the form. And, since we covered validation in the previous article, we're ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns.",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff78746D)))
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/CourseTests');
                      },
                      child: Text('Next'))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
