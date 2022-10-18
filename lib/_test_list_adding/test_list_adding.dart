import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
  print('Exit App...');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      home: const ExercitiiPage(),
    );
  }
}

class ExercitiiPage extends StatefulWidget {
  const ExercitiiPage({super.key});

  @override
  State<ExercitiiPage> createState() => _ExercitiiPageState();
}

class _ExercitiiPageState extends State<ExercitiiPage> {
  List<List> data = [
    [1, "v1", "v2", "v3", "r", "the_r"],
    [2, "v1", "v2", "v3", "r", "the_r"],
    [3, "v1", "v2", "v3", "r", "the_r"]
  ];
  int index = 0;

  _changeElement() {
    data[index][5] = 'new_r';
    index = index + 1;
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            child: Text('this is the $index'),
            onPressed: () {
              _changeElement();
            }),
        ElevatedButton(
            child: Text('this is the $index'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultatPage(
                    data: data,
                  ),
                ),
              );
            }),
      ],
    );
  }
}

class ResultatPage extends StatelessWidget {
  const ResultatPage({super.key, required this.data});
  final List<List> data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is Resultat Page'),
      ),
      body: Text(
        data.toString(),
        style:
            const TextStyle(backgroundColor: Colors.blue, color: Colors.white),
      ),
    );
  }
}
