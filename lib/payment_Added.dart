import 'package:flutter/material.dart';

class NotFound extends StatefulWidget {
  const NotFound({super.key});

  @override
  State<NotFound> createState() => _NotFoundState();
}

class _NotFoundState extends State<NotFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                  onChanged: (labelText) {},
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Cooking ",
                      suffixIcon: Icon(Icons.search))),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset('assets/SC30.png'),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                " Course not found",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                  "Try searching the course with\n         a different keyword",
                  style: TextStyle(
                    fontSize: 14,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
