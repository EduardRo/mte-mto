import 'package:mate_mato/auth_protocol/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ListenerWidget());
}

class ListenerWidget extends StatefulWidget {
  const ListenerWidget({super.key});

  @override
  State<ListenerWidget> createState() => _ListenerWidgetState();
}

class _ListenerWidgetState extends State<ListenerWidget> {
  int numberOfPress = 0;
  int numberOfreleases = 0;
  double x = 0.0;
  double y = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
