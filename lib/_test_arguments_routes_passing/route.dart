import 'package:flutter/material.dart';
import 'package:mate_mato/_test_arguments_routes_passing/page1.dart';
import 'package:mate_mato/_test_arguments_routes_passing/page2.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case '/second':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => SecondPage(data: args));
        } else {
          return _errorRoute();
        }

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Eroor')),
        body: const Center(
          child: Text('error'),
        ),
      );
    });
  }
}
