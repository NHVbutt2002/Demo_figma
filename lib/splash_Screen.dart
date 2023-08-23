import 'package:flutter/material.dart';
import 'package:myappfigma/gen/localization/l10n.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        const Padding(padding: EdgeInsets.symmetric(vertical: 100)),
        Image.asset('assets/Spl.png'),
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
