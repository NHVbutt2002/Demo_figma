import 'package:flutter/material.dart';
import 'package:myappfigma/gen/localization/l10n.dart';
import 'package:myappfigma/l10n/save/AppPreferences.dart';
import 'package:myappfigma/utils/router_constants.dart';
import 'package:myappfigma/utils/routers.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
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

class WelCome extends StatefulWidget {
  const WelCome({super.key});

  @override
  State<WelCome> createState() => _WelComeState();
}

class _WelComeState extends State<WelCome> {
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
      Navigator.of(context).pushNamed(onbroadingRouter);
    }
  }

  nav() async {
    await Future.delayed(const Duration(seconds: 3));
    _showApp();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/img1.png'),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Customize the \n Illustrations with Blush",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                        "All the illustrations in this project were made with Blush, which means that you can customize them however you want! Follow these steps to learn how",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/install.png'),
                        const Text(
                            "Install the Blush Plugin to personalize all the illustrations in the file.\n Just select any illustration and you’ll see a button in the right panel \nto install or edit with Blush.",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/menu.png'),
                        const Text(
                            "Open the Blush plugin  from the Plugins menu or by right-clicking \nin the canvas and selecting the Plugins option. ",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/image.png'),
                        const Text(
                            "With the plugin open, select any of the images and you’ll see the \n options  to edit in the plugin window.",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/queen.png'),
                        const Text(
                            "Now you can customize the illlustrations and make the  design yours!",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffBCF4F4)),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('PRO TIP',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              "Do you want to get vectors as SVG? Or edit the colors and paths in your doodles? Then upgrade to the Pro Plan. Additionally, you’ll unlock over 10,000 illustrations.",
                              style: TextStyle(
                                  fontSize: 8, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              "Use the coupon GET20 to get a 20% discount on checkout",
                              style: TextStyle(
                                  fontSize: 8, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/SplashScreen');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: const Size(200, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: const Text('Install the Blush Plugin'),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
