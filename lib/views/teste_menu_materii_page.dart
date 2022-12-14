import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mate_mato/models/menu_materii.dart';
import 'package:mate_mato/class_arguments/screen_arguments.dart';

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
  int nrMaterii = 0;
  //final ScreenArguments arguments;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    menumaterii = await RemoteServiceMaterii().getMenuMaterii(widget.data);
    if (menumaterii != null) {
      setState(() {
        isLoaded = true;

        nrMaterii = menumaterii!.length.toInt();
        //print(menumaterii?.length);
      });

      //print(nrMaterii);
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
            return Column(children: [
              if (index > 0 && index < nrMaterii.toInt())
                if (menumaterii![index - 1].codmaterie !=
                    menumaterii![index].codmaterie)
                  const Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Divider(
                      height: 3,
                      thickness: 7,
                      color: Color.fromARGB(255, 93, 20, 150),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/test',
                          arguments: ScreenArguments(
                              menumaterii![index].codmaterie.toString(),
                              menumaterii![index].codclasa.toString(),
                              menumaterii![index].codserie.toString()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 150,
                            child: Text(menumaterii![index].denumireserie,
                                maxLines: 2,
                                style: GoogleFonts.bebasNeue(
                                    fontSize: 15, color: Colors.green)),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 200, 244, 54),
                              ),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}
