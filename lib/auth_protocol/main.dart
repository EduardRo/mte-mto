import 'package:flutter/material.dart';
//import 'package:mate_mato/auth_protocol/remoteservicecustomer.dart';

import 'customerlistbuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Sanctum Customers',
        home: Scaffold(
          body: CustomerListBuilder(),
        ));
  }
}
