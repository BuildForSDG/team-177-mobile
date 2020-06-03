import 'package:flutter/material.dart';
import 'package:kenright/ui/screens/service_details.dart';
import '../ui/screens/home.dart';
import '../ui/screens/login.dart';
import '../ui/screens/signup.dart';
import '../ui/screens/welcome.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => WelcomeScreen(
                  title: "Kenright",
                ));
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/services':
        return MaterialPageRoute(
            builder: (_) => ServiceDetails(
                  url: settings.arguments,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
