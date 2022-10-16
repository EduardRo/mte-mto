import 'package:flutter/material.dart';
import 'package:mate_mato/utils/nav_bar.dart';
import 'package:mate_mato/route/route.dart' as route;

class ExercitiiPage extends StatelessWidget {
  const ExercitiiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: Row(children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_call),
          ),
          const Text('Exercitii page'),
        ]),
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, route.homePage),
          icon: const Icon(Icons.home),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: const Center(child: Text('this is exercitii9 page')),
    );
  }
}
