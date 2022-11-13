import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyTestApp());
}

class MyTestApp extends StatelessWidget {
  const MyTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'titleof app bar',
          ),
        ),
        body: Column(children: [
          const Text('primultext'),
          Form(
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Plese enter some fuckign text!';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
