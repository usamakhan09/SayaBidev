import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sayabi_dev/Constants/splash_screen.dart';
import 'package:sayabi_dev/Screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sayabidevs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color.fromRGBO(231, 27, 3, 1)),
      home: AnimatedSplashScreen(
          nextScreen: const Home(),
          splash: const SplashScreen(),
          duration: 3000,
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: 500),
    );
  }
}
