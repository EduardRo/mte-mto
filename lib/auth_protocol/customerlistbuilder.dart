import 'package:flutter/material.dart';
import 'modelcustomers.dart';

class CustomerListBuilder extends StatelessWidget {
  const CustomerListBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Customer>>(
        future: futureCustomers,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Expanded(
                child: ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Customer customer = snapshot.data![index];
                return ListTile(
                  title: Text(customer.name),
                  subtitle: Text(customer.email),
                );
              },
            ));
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const CircularProgressIndicator();
        });
  }
}

//-----------
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
