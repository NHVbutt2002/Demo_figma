import 'dart:async';

import 'package:demolocal1/onbroading.dart';

import 'package:demolocal1/Sc_Signup.dart';
import 'package:demolocal1/Sc_login1.dart';
import 'package:demolocal1/gen/localization/l10n.dart';
import 'package:demolocal1/save/AppPreferences.dart';
import 'package:demolocal1/utils/router_constants.dart';
import 'package:demolocal1/utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale locale = const Locale("vi");
  List<Locale> supp = [const Locale("vi"), const Locale("en")];
  // This widget is the root of your application.
  void toggleLanguage() {
    setState(() {
      if (locale.languageCode == "vi") {
        locale = const Locale("en");
      } else {
        locale = const Locale("vi");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: Str.delegate.supportedLocales,
      localizationsDelegates: const [
        Str.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      onGenerateRoute: RouterUtils.generateRoute,
      locale: locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SC1State();
}

class _SC1State extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    nav();
  }

  void _showApp() async {
    final show = AppPreferences.getBool('showLogin');
    print(show);
    if (show) {
      Navigator.of(context).pushNamed(scLoginRouter);
    } else {
      Navigator.of(context).pushNamed(cs2Router);
    }
  }

  nav() async {
    await Future.delayed(const Duration(seconds: 3));
    _showApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        const Padding(padding: EdgeInsets.symmetric(vertical: 100)),
        Image.asset('assets/SC4.jpg'),
        const SizedBox(
          height: 16,
        ),
        Text(Str.of(context).appName,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            )),
        const Padding(padding: EdgeInsets.symmetric(vertical: 120)),
      ])),
    );
  }
}
