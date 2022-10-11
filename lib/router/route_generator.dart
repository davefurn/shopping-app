import 'package:flutter/material.dart';
import 'package:shopping_app/router/custom_page_route.dart';
import 'package:shopping_app/screens/homescreen.dart';
import 'package:shopping_app/screens/login_ui/auth_screen.dart';
import 'package:shopping_app/screens/login_ui/login_pages/login_in.dart';
import 'package:shopping_app/screens/login_ui/login_pages/sign_up.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //getting arguments passed in while calling navigator.pushnamed

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const Login());
       case '/signUp':
        return MaterialPageRoute(builder: (_) => const Signup());
      case '/HomeScreen':
        return customPageBuilder(HomeScreen(),0,-1);
      default:
        return _errorPage(settings);
    }
  }
}

Route<dynamic> _errorPage(settings) {
  return MaterialPageRoute(
    settings: settings,
    builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child:  Text('Error'),
      ),
    );
  });
}
