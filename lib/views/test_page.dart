// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mate_mato/services/remote_service_test.dart';
import 'package:mate_mato/screen_arguments/screen_arguments.dart';

import '../models/test.dart';

class TestPage extends StatefulWidget {
  //final String codserie;
  final ScreenArguments args;
  const TestPage({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Test>? test;
  bool isLoaded = true;
  int testNo = 0;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    test = await RemoteServiceTest()
        .getTest(widget.args.clasa, widget.args.mat, widget.args.serie);

    if (test != null) {
      setState(() {
        isLoaded = true;
        testNo = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alegeti varianta corecta:')),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(child: CircularProgressIndicator()),
        child: Column(
          children: [
            Text(test![testNo].idtest),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://www.matematicon.ro/m/mem/${test![testNo].path}/${test![testNo].enunt}.png'),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (testNo < test!.length.bitLength) {
                  print('valoarea $testNo iar $test!.length.toInt()');
                  return nextScreen();
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.network(
                    'https://www.matematicon.ro/m/mem/${test![testNo].path}/${test![testNo].var1}.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.network(
                'https://www.matematicon.ro/m/mem/${test![testNo].path}/${test![testNo].var2}.png',
                color: Colors.blue,
              ),
            ),
            Image.network(
                'https://www.matematicon.ro/m/mem/${test![testNo].path}/${test![testNo].raspuns}.png'),
          ],
        ),
      ),
    );
  }

  void nextScreen() {
    setState(() {
      testNo = testNo + 1;
      print('lungimea $test!.length testNo: $testNo');
    });
  }
}
