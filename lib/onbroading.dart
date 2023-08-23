import 'package:flutter/material.dart';
import 'package:myappfigma/Intro.dart';
import 'package:myappfigma/l10n/save/AppPreferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onbroading extends StatefulWidget {
  const Onbroading({super.key});

  @override
  State<Onbroading> createState() => _SC2State();
}

class _SC2State extends State<Onbroading> {
  PageController _controller = PageController();
  int currPage = 0;
  final listImage = [
    {
      "image": "assets/Sc1.png",
      "title": "Học mọi lúc mọi nơi",
      "description":
          "Quarantine is the perfect time to spend your \n day learning something new, from anywhere!"
    },
    {
      "image": "assets/Sc2.png",
      "title": "Find a course \n      for you",
      "description":
          "Quarantine is the perfect time to spend your \n day learning something new, from anywhere!",
    },
    {
      "image": "assets/SC3.png",
      "title": "Improve your skills",
      "description":
          "Quarantine is the perfect time to spend your \n day learning something new, from anywhere!"
    }
  ];
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: currPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: PageView.builder(
              // physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  currPage = value;
                });
              },
              itemCount: listImage.length,
              itemBuilder: (BuildContext context, int i) {
                final item = listImage[i];

                return Intro1(
                  item["title"].toString(),
                  item["description"].toString(),
                  item["image"].toString(),
                );
              },
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: listImage.length,
            effect: const ExpandingDotsEffect(
              dotHeight: 7,
              dotWidth: 7,
              paintStyle: PaintingStyle.fill,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 50,
            width: 400,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {
                if (currPage == listImage.length - 1) {
                  AppPreferences.setBool('showLogin', true);
                  Navigator.of(context).pushReplacementNamed('/ScLogin');
                } else {
                  _controller.animateToPage(
                    currPage + 1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.bounceInOut,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
              child: const Text(
                "Next",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
