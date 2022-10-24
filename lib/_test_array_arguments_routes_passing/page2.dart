import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  //final String data;

  const SecondPage({
    Key? key,
    required this.r1,
    required this.r2,
    required this.r3,
    required this.r4,
    required this.r5,
  }) : super(key: key);
  final String r1;
  final String r2;
  final String r3;
  final String r4;
  final String r5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Second Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              r1.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              r2.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              r3.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              r4.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              r5.toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
