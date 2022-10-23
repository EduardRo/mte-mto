import '../models/menu_materii.dart';
import 'package:http/http.dart' as http;

class RemoteServiceMaterii {
  Future<List<MenuMaterii>?> getMenuMaterii() async {
    var client = http.Client();

    var uri = Uri.parse('https://www.matematicon.ro/_API/menu_clasa.php');

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return menuMateriiFromJson(json);
    } else {
      return null;
    }
  }
}
