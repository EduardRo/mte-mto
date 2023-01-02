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
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Listener(
        onPointerDown: ((PointerDownEvent event) {
          setState(() {
            numberOfPress++;
          });
        }),
        onPointerMove: ((PointerEvent details) {
          setState(() {
            x = details.position.dx;
            y = details.position.dy;
          });
        }),
        onPointerUp: (((PointerEvent details) {
          setState(() {
            numberOfreleases++;
          });
        })),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.orangeAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'presse:$numberOfPress',
                style: const TextStyle(fontSize: 40),
              ),
              Text('releases: $numberOfreleases'),
              Text('cursor: ${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}
