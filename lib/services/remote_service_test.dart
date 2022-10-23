import 'package:http/http.dart' as http;
import '../models/test.dart';

class RemoteServiceTest {
  Future<List<Test>?> getTest(String cls, String mat, String cc) async {
    var client = http.Client();

    var uri = Uri.parse(
        'https://www.matematicon.ro/_API/teste-grila.php?cls=$cls&mat=$mat&cc=$cc');

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return testFromJson(json);
    } else {
      return null;
    }
  }
}
