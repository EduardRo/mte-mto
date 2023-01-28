import 'package:flutter/material.dart';
//import 'package:mate_mato/class_arguments/screen_arguments.dart';

import 'package:mate_mato/views/home_page.dart';
//import 'package:mate_mato/views/test_page.dart';
import 'package:mate_mato/views/teste_menu_clase_page.dart';
//import 'package:mate_mato/views/premii_page.dart';
import 'package:mate_mato/views/rezultate_page.dart';
import 'package:mate_mato/views/teorie_page.dart';
import 'package:theme_provider/theme_provider.dart';

import '../views/teste_menu_materii_page.dart';

//import 'package:mate_mato/views/settings_page.dart';
//import 'package:mate_mato/views/despre_page.dart';

// Routes Names
class RouteGenerator {
// Control our page route flow

  static Route<dynamic> controllerRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomePage());

      case '/testepage':
        return MaterialPageRoute(
            builder: (context) =>
                const ThemeConsumer(child: TesteMenuClasePage()));
      case '/rezultatepage':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => RezultatePage(data: args));
        } else {
          return _errorRoute();
        }

      case '/testematerii':
        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => TesteMenuMateriiPage(data: args));
        } else {
          return _errorRoute();
        }

      case 'teoriepage':
        return MaterialPageRoute(builder: (context) => const TeoriePage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('error'),
        ),
        body: const Center(
          child: Text('error'),
        ),
      );
    });
  }
}
