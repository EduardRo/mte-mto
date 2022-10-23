// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mate_mato/screen_arguments/screen_arguments.dart';

// ignore: must_be_immutable
class Test extends StatefulWidget {
  //final String codserie;
  ScreenArguments args;
  Test({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alegeti varianta corecta:')),
      body: Text(
          'clasa: ${widget.args.clasa} materia:${widget.args.mat} seria:${widget.args.serie}'),
    );
  }
}
