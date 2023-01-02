import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ListViewWidget',
      home: Scaffold(
        body: ListViewApp(),
      ),
    );
  }
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ListView.separated(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: const Text('Flutter Map'),
            tileColor: Colors.orangeAccent,
            onTap: () {},
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.menu),
          );
        },
        separatorBuilder: ((BuildContext context, int index) => const Divider(
              color: Colors.white,
            )),
      ),
    );
  }
}
