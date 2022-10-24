import 'package:flutter/material.dart';
import 'package:mate_mato/route/route.dart';
import 'package:theme_provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          /* dark theme settings */
        ),
        onGenerateRoute: RouteGenerator.controllerRoute,
        initialRoute: '/',
        //home: const HomePage(),
      ),
    );
  }
}
