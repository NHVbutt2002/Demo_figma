import 'package:demolocal1/Home1_page.dart';
import 'package:demolocal1/onbroading.dart';

import 'package:demolocal1/Sc_Signup.dart';
import 'package:demolocal1/Sc_login1.dart';
import 'package:demolocal1/main.dart';

import 'package:demolocal1/utils/router_constants.dart';
import 'package:flutter/material.dart';

class RouterUtils {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case intinalRouter:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case cs2Router:
        return MaterialPageRoute(builder: (_) => const Onbroading());

      case scLoginRouter:
        return MaterialPageRoute(builder: (_) => const ScLogin());
      case signUpRouter:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case home1Router:
        return MaterialPageRoute(builder: (_) => const Home1Screen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
