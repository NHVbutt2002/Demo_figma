import 'dart:async';

import 'package:demolocal1/page.dart';
import 'package:demolocal1/save/AppPreferences.dart';
import 'package:flutter/material.dart';

import 'gen/localization/l10n.dart';
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
      "image": "assets/SC3.jpg",
      "title": "Học mọi lúc mọi nơi",
      "description":
          "Cách ly là thời điểm hoàn hảo để dành \n ngày của bạn để học điều gì đó mới, từ mọi nơi",
    },
    {
      "image": "assets/SC2.jpg",
      "title": "Find a course \n      for you",
      "description":
          "Quarantine is the perfect time to spend your \n day learning something new, from anywhere!",
    },
    {
      "image": "assets/SC1.jpg",
      "title": "Improve your skills",
      "description":
          "Cách ly là thời điểm hoàn hảo để dành \n ngày của bạn để học điều gì đó mới, từ mọi nơi",
    }
  ];
  @override
  void initState() {
    // TODO: implement initState
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

                return Page1(
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
