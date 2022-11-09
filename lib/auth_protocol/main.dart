import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter File Upload Example',
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  void switchScreen(str, context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => UploadPage(url: str)));
  @override
  Widget build(context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
        appBar: AppBar(title: const Text('Flutter File Upload Example')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                  "Insert the URL that will receive the Multipart POST request (including the starting http://)",
                  style: Theme.of(context).textTheme.headline1),
              TextField(
                controller: controller,
                onSubmitted: (str) => switchScreen(str, context),
              ),
              TextButton(
                child: const Text("Take me to the upload screen"),
                onPressed: () => switchScreen(controller.text, context),
              )
            ],
          ),
        ));
  }
}

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  Future<String?> uploadImage(filename, url) async {
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath('picture', filename));
    var res = await request.send();
    return res.reasonPhrase;
  }

  String state = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter File Upload Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text(state)],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var file = await ImagePicker.pickImage(source: ImageSource.gallery);
          var res = await uploadImage(file!.path, widget.url);
          setState(() {
            state = res!;
            print(res);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
