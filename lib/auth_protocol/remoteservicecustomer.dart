import 'package:mate_mato/auth_protocol/modelcustomers.dart';

import 'package:http/http.dart' as http;

class RemoteServiceClase {
  Future<List<Customer>?> getMenuClase() async {
    var client = http.Client();

    var uri = Uri.parse('http://127.0.0.1:8000/api/customerstest');

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return customerFromJson(json);
    } else {
      return null;
    }
  }
}
