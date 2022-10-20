import 'package:flutter/material.dart';

class RezultatePage extends StatelessWidget {
  const RezultatePage(
    Object? arguments, {
    super.key,
  });
  //final ScreenArguments arguments;
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;

    late String retriveString;
    print(data);
    if (data == null) {
      retriveString = "wtf";
    } else {
      retriveString = "not empty";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(retriveString),
      ),
      body: Text(ModalRoute.of(context)!.toString()),
    );
  }
}
