import 'package:flutter/material.dart';
import 'package:mate_mato/_test_arguments_routes_passing/page2.dart';
import 'page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initially display FirstPage
      home: const FirstPage(),
      routes: {'secondPage': (_) => const SecondPage(data: 'data variant 1')},
    );
  }
}
