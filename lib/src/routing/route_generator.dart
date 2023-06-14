import 'package:diabex/src/features/onboarding/views/splash_screen.dart';
import 'package:diabex/src/routing/router.dart';

import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Onboard and Auth
      case init:
        final args = settings.arguments; 
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      // case login:
      //   final args = settings.arguments;
      //   return MaterialPageRoute(builder: (context) => const LoginScreen());
      // case register:
      //   final args = settings.arguments;
      //   return MaterialPageRoute(builder: (context) => const RegisterScreen());

      default:
        return _errorPage();
    }
  }

  static Route<dynamic> _errorPage() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text("ERROR"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("Page Not Found"),
        ),
      ),
    );
  }
}
