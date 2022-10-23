import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mate_mato/models/menu_clase.dart';
import 'package:mate_mato/utils/nav_bar.dart';
import 'package:mate_mato/services/remote_service_menu_clase.dart';

class TesteMenuClasePage extends StatefulWidget {
  const TesteMenuClasePage({super.key});

  @override
  State<TesteMenuClasePage> createState() => _TesteMenuClasePageState();
}

class _TesteMenuClasePageState extends State<TesteMenuClasePage> {
  List<MenuClase>? menuclase;
  bool isLoaded = true;
  //String vari = 'asta e variabila care o trimit de test';

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    menuclase = await RemoteServiceClase().getMenuClase();
    if (menuclase != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  createvari(int index) {
    switch (index) {
      case 0:
        return '09';
      case 1:
        return '10';
      case 2:
        return '11';
      case 3:
        return '12';

      default:
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
          onPressed: () => Navigator.pushNamed(context, '/'),
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
        replacement: const Center(child: CircularProgressIndicator()),
        child: ListView.builder(
          itemCount: menuclase?.length,
          itemBuilder: (context, index) {
            return Expanded(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/testematerii',
                            arguments: createvari(index));
                      },
                      child: Text(menuclase![index].codclasa,
                          style: GoogleFonts.abel(fontSize: 30)),
                    ),
                  ),
                )
              ]),
            );
          },
        ),
      ),
    );
  }
}
