import 'package:flutter/material.dart';
import 'package:myappfigma/Onbroading.dart';
import 'package:myappfigma/Payment_Added.dart';
import 'package:myappfigma/Settings.dart';
import 'package:myappfigma/choose_LessonsCourse.dart';
import 'package:myappfigma/course_Lesson.dart';
import 'package:myappfigma/course_Tests.dart';
import 'package:myappfigma/home_Screen.dart';
import 'package:myappfigma/main.dart';
import 'package:myappfigma/no_Payment.dart';
import 'package:myappfigma/not_Found.dart';
import 'package:myappfigma/proFile.dart';
import 'package:myappfigma/product_Detail.dart';
import 'package:myappfigma/results.dart';
import 'package:myappfigma/results2.dart';
import 'package:myappfigma/not_Saved.dart';
import 'package:myappfigma/saved.dart';
import 'package:myappfigma/scLogin.dart';
import 'package:myappfigma/sign_Up.dart';
import 'package:myappfigma/splash_Screen.dart';
import 'package:myappfigma/test_Question.dart';
import 'package:myappfigma/utils/router_constants.dart';
import 'package:myappfigma/your_Courses.dart';

class RouterUtils {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case intinalRouter:
        return MaterialPageRoute(builder: (_) => const WelCome());
      case splashScreenRouter:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case onbroadingRouter:
        return MaterialPageRoute(builder: (_) => const Onbroading());
      case scLoginRouter:
        return MaterialPageRoute(builder: (_) => const ScLogin());
      case signUpRouter:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case profile1Router:
        return MaterialPageRoute(builder: (_) => const Profile());
      case settingsRouter:
        return MaterialPageRoute(builder: (_) => const Settings());
      case homesRouter:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case resultsRouter:
        return MaterialPageRoute(builder: (_) => const Results());
      case productRouter:
        return MaterialPageRoute(builder: (_) => const Product());
      case coursesRouter:
        return MaterialPageRoute(builder: (_) => const YourCourses());
      case chooseRouter:
        return MaterialPageRoute(builder: (_) => const LessonsCourse());
      case lessonRouter:
        return MaterialPageRoute(builder: (_) => const CourseLesson());
      case testsRouter:
        return MaterialPageRoute(builder: (_) => const CourseTests());
      case question1Router:
        return MaterialPageRoute(builder: (_) => const TestQuestion());
      case resultss2Router:
        return MaterialPageRoute(builder: (_) => const Results2());
      case saved1Router:
        return MaterialPageRoute(builder: (_) => const Saved());
      case saved2Router:
        return MaterialPageRoute(builder: (_) => const Saved2());
      case notpayy1Router:
        return MaterialPageRoute(builder: (_) => const NotPayment());
      case notpay2Router:
        return MaterialPageRoute(builder: (_) => const NotPayment2());
      case notfound1Router:
        return MaterialPageRoute(builder: (_) => const NotFound());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
