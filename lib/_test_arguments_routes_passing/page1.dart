import 'package:flutter/material.dart';
import 'page2.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'First Page',
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              child: const Text('Go to second'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        SecondPage(data: 'Hello there from the first page!'),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
