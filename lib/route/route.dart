import 'package:flutter/material.dart';

import 'package:mate_mato/views/home_page.dart';
import 'package:mate_mato/views/teste_page.dart';
//import 'package:mate_mato/views/premii_page.dart';
import 'package:mate_mato/views/rezultate_page.dart';
import 'package:mate_mato/views/teorie_page.dart';
//import 'package:mate_mato/views/settings_page.dart';
//import 'package:mate_mato/views/despre_page.dart';

// Routes Names

const String homePage = 'home';
const String testePage = 'testepage';
const String rezultatePage = 'rezultatepage';
const String teoriePage = 'teoriepage';

// Control our page route flow

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());

    case testePage:
      return MaterialPageRoute(builder: (context) => const TestePage());
    case rezultatePage:
      return MaterialPageRoute(builder: (context) => const RezultatePage());
    case teoriePage:
      return MaterialPageRoute(builder: (context) => const TeoriePage());

    default:
      throw ('This route name does not exits');
  }
}
