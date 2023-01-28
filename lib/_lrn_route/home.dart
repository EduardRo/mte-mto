import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../utils/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool boommarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('MATE-MATO'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Asteptati! Se incarca datele...',
              style:
                  GoogleFonts.caveat(fontSize: 40, fontWeight: FontWeight.w900),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                if (boommarked == false) {
                  boommarked = true;
                  _controller.forward();
                } else {
                  boommarked = false;
                  _controller.reverse();
                }
              },
              child: Lottie.network(
                  'https://assets9.lottiefiles.com/packages/lf20_wGsXfA.json',
                  controller: _controller),
            ),
          ),
        ],
      ),
    );
  }
}
