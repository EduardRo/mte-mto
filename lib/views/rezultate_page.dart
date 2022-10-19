import 'package:flutter/material.dart';

class RezultatePage extends StatelessWidget {
  const RezultatePage({
    super.key,
  });
  //final ScreenArguments arguments;
  @override
  Widget build(BuildContext context) {
    //final Object? arguments = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('arguments.clasa.toString()'),
      ),
      body: const Text('arguments.clasa.toString()'),
    );
  }
}
