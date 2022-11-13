import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var _count = 5;
    return MaterialApp(
        title: 'title',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Sample Code'),
          ),
          body: Column(
            children: [
              Center(child: Text('You have pressed the button $_count times.')),
              const Text('Login Page'),
              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your name',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Sign up'),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: const Text('baba'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => setState(() => _count++),
            tooltip: 'Increment Counter',
            child: const Icon(Icons.add),
          ),
        ));
  }
}
