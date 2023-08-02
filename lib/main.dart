import 'dart:async';

import 'package:demolocal1/SC2.dart';
import 'package:demolocal1/SC3.dart';
import 'package:demolocal1/SC4.dart';
import 'package:demolocal1/Sc_Signup.dart';
import 'package:demolocal1/Sc_login1.dart';
import 'package:demolocal1/gen/localization/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
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
      routes: {
        '/': (context) => SplashScreen(),
        '/SC2': (context) => SC2(),
        '/SC3': (context) => SC3(),
        '/SC4': (context) => SC4(),
        '/ScLogin': (context) => ScLogin(),
        '/SignUp': (context) => SignUp(),
      },
      locale: locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SplashScreen(),
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
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? show = prefs.getBool('show');
    if ((show ?? false)) {
      Navigator.of(context).pushNamed('/');
    } else {
      Navigator.of(context).pushNamed('SC2');
    }
  }

  nav() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushNamedAndRemoveUntil('/SC2', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 100)),
        Image.asset('assets/SC4.jpg'),
        SizedBox(
          height: 16,
        ),
        Text(Str.of(context).appName,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            )),
        Padding(padding: EdgeInsets.symmetric(vertical: 120)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.setBool('show', true);
                Navigator.of(context).pushNamed('/SC2');
              },
              icon: Icon(Icons.arrow_forward_ios),
              color: Color(0xffA2AEBD),
            ),
          ],
        ),
      ])),
    );
  }
}
