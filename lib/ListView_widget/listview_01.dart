import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListViewWidget',
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
          backgroundColor: Colors.black,
          foregroundColor: Color.fromARGB(255, 181, 194, 33),
          title: const Text('list view widget'),
        ),
        body: const ListViewApp(),
      ),
    );
  }
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 45,
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
            color: Colors.black,
            
          )),
    );
  }
}
