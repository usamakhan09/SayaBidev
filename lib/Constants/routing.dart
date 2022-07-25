import 'package:flutter/material.dart';
import 'package:sayabi_dev/Screens/chat_screen.dart';
import 'package:sayabi_dev/Screens/home.dart';

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
      case '/':
        return animateRoutes(const Home());
      case '/chat':
        return animateRoutes(const ChatScreen());
      // case '/orders':
      //   return animateRoutes(Order());
      // case '/profile':
      //   return animateRoutes(Profile());
      // case '/address':
      //   return animateRoutes(Address());
      // case '/cart':
      //   return animateRoutes(Cart());
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
