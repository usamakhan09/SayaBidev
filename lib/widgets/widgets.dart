import 'package:flutter/material.dart';
import 'package:sayabi_dev_app/screen/home.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      // home: SplashScreen1(),
      home:
      SafeArea(
          top: true,
          bottom: true,
          left: true,
          right:true ,

          child: homeScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}