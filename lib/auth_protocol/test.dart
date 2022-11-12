import '../models/menu_clase.dart';
import 'package:http/http.dart' as http;

class RemoteServiceClase {
  Future<List<MenuClase>?> getMenuClase() async {
    var client = http.Client();

    var uri = Uri.parse('https://www.matematicon.ro/_API/menu_clase.php');

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return menuClaseFromJson(json);
    } else {
      return null;
    }
  }
}
