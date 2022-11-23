import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'api.dart';

void main() {
  runApp(const MyTestApp());
}

class MyTestApp extends StatefulWidget {
  const MyTestApp({super.key});

  @override
  State<MyTestApp> createState() => _MyTestAppState();
}

class _MyTestAppState extends State<MyTestApp> {
  TextEditingController passController = TextEditingController();
  TextEditingController repassController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  _register() {
    var data = {
      'name': nameController.text,
      'email': emailController.text,
      'password': passController.text,
    };

    var res = CallApi.postData(data, 'register');
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Application Form Test',
          ),
        ),
        body: Column(children: [
          const Text('Aceasta este o simulare de login form!'),
          Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: TextFormField(
                    controller: nameController,
                    decoration:
                        const InputDecoration(labelText: 'Introduceti Nume'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Plese enter some fuckign text!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'Introduceti Emailul:',
                      border: UnderlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Plese enter some fuckign text!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Introduceti parola:',
                      border: UnderlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Plese enter some fuckign text!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _register();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text('login'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
