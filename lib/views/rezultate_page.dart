import 'package:flutter/material.dart';

class RezultatePage extends StatelessWidget {
  final String data;

  const RezultatePage({
    Key? key,
    required this.data,
  }) : super(key: key);
  //final ScreenArguments arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Rezultatul testului:'),
      ),
      body: Text(data),
    );
  }
}
