import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mate_mato/models/menu_materii.dart';

import '../services/remote_service_menu_materii.dart';

class TesteMenuMateriiPage extends StatefulWidget {
  final String data;

  const TesteMenuMateriiPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<TesteMenuMateriiPage> createState() => _TesteMenuMateriiPageState();
}

class _TesteMenuMateriiPageState extends State<TesteMenuMateriiPage> {
  List<MenuMaterii>? menumaterii;
  bool isLoaded = true;
  //final ScreenArguments arguments;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    menumaterii = await RemoteServiceMaterii().getMenuMaterii();
    if (menumaterii != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alege din materiile de mai jos ${widget.data}'),
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(child: CircularProgressIndicator()),
        child: ListView.builder(
          itemCount: menumaterii?.length,
          itemBuilder: (context, index) {
            return Expanded(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          '/testematerii',
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(menumaterii![index].denumireserie,
                              style: GoogleFonts.roboto(fontSize: 20)),
                          Row(
                            children: const [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          )
                        ],
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
