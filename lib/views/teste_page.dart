import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mate_mato/models/menu_clase.dart';
import 'package:mate_mato/utils/nav_bar.dart';
import 'package:mate_mato/route/route.dart' as route;
import 'package:mate_mato/services/remote_service_menu_clase.dart';

class TestePage extends StatefulWidget {
  const TestePage({super.key});

  @override
  State<TestePage> createState() => _TestePageState();
}

class _TestePageState extends State<TestePage> {
  List<MenuClase>? menuclase;
  bool isLoaded = true;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    menuclase = await RemoteService().getMenuClase();
    if (menuclase != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: Row(children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_call),
          ),
          const Text('Teste Page'),
        ]),
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, route.homePage),
          icon: const Icon(Icons.home),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Visibility(
        visible: isLoaded,
        // ignore: sort_child_properties_last
        child: Padding(
          padding: const EdgeInsets.only(top: 128.0),
          child: ListView.builder(
              itemCount: menuclase?.length,
              itemBuilder: (context, index) {
                return Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 20, top: 1, bottom: 10),
                        child: SizedBox(
                          width: 500,
                          height: 100,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              elevation:
                                  MaterialStateProperty.resolveWith<double?>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return 16;
                                } else {
                                  return null;
                                }
                              }),
                            ),
                            onPressed: () =>
                                Navigator.pushNamed(context, route.homePage),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18.0, bottom: 10, left: 10, right: 10),
                              child: Text(
                                menuclase![index].codclasa,
                                style: GoogleFonts.bebasNeue(fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
        replacement: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
