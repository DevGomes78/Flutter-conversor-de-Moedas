import 'dart:convert';
import 'package:flutter_provider/routes/routes.dart';
import 'package:http/http.dart' as http;

class Moedas {
  Future<Map?> GetData() async {
    final url = Uri.parse(ApiRoutes.Api);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
  }
}