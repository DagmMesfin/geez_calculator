import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Homepage/home_page.dart';
import 'Num_Conv_page/num_conv_page.dart';
import 'package:geez_calculator/about_me/about_me.dart';
import 'package:geez_calculator/how_to/how_to.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => AnimatedSplashScreen(
              splash: 'assets/images/icon.jpg',
              duration: 2000,
              splashTransition: SplashTransition.slideTransition,
              pageTransitionType: PageTransitionType.leftToRightWithFade,
              nextScreen: HomePage(),
            ),
        '/second': (context) => NumConvPage(),
        '/third': (context) => HowTo(),
        '/fourth': (context) => AboutMe(),
      },
    );
  }
}
