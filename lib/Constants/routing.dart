import 'package:flutter/material.dart';
import 'package:sayabi_dev/Screens/ai_dev_screen.dart';
import 'package:sayabi_dev/Screens/app_dev_screen.dart';
import 'package:sayabi_dev/Screens/chat_screen.dart';
import 'package:sayabi_dev/Screens/data_science_dev_screen.dart';
import 'package:sayabi_dev/Screens/home.dart';
import 'package:sayabi_dev/Screens/web_dev_screen.dart';

animateRoutes(var route) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => route,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return animateRoutes(const Home());
      case '/chat':
        return animateRoutes(const ChatScreen());
      case '/App Development':
        return animateRoutes(const AppDevelopment());
      case '/Web Development':
        return animateRoutes(const WebDevelopment());
      case '/AI Development':
        return animateRoutes(const AIDevelopment());
      case '/Data Science Dev':
        return animateRoutes(const DataScience());
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return const Scaffold(
      body: Center(
        child: Text("Error"),
      ),
    );
  });
}
