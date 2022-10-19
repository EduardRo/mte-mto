import 'package:flutter/material.dart';

class RezultatePage extends StatelessWidget {
  const RezultatePage({
    super.key,
  });
  //final ScreenArguments arguments;
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;

    late String retriveString;
    print(data);
    if (data == null) {
      retriveString = "empty";
    } else {
      retriveString = data as String;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(retriveString),
      ),
      body: const Text('arguments.clasa.toString()'),
    );
  }
}
