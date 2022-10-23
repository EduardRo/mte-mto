// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  final String codserie;

  const Test({
    Key? key,
    required this.codserie,
  }) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alegeti varianta corecta:')),
      body: Text('body test $widget.codserie'),
    );
  }
}
