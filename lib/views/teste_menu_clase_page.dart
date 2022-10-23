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
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color.fromARGB(255, 135, 17, 117),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(4.0, 4.0),
                            spreadRadius: 1.3,
                            blurRadius: 2.0,
                          ),
                          BoxShadow(
                            color: Color.fromARGB(255, 171, 194, 172),
                            offset: Offset(-4.0, -4.0),
                            spreadRadius: 1.3,
                            blurRadius: 2.0,
                          ),
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 127, 114, 114),
                              Color.fromARGB(255, 118, 71, 71),
                              Color.fromARGB(255, 95, 69, 69),
                              Color.fromARGB(255, 42, 2, 2),
                            ],
                            stops: [
                              0,
                              0.1,
                              0.3,
                              1
                            ]),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/testematerii',
                              arguments: createvari(index));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Text(
                            menuclase![index].codclasa,
                            style: GoogleFonts.abel(
                                fontSize: 30, color: Colors.green),
                          ),
                        ),
                      ),
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

// l-am decorat pe butonul asta de l-am inebunit