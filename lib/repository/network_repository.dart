
import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkRepository{

  final http.Client client = http.Client();

  Future<List<dynamic>> getTodos() async {
    try {
      final response = await client
          .get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));

      if (response.statusCode == 200) {
        List<dynamic> todosList = json.decode(response.body);

        return todosList;
      } else {
        return [];
      }
    } catch (_) {
      print("Something wrong with http request");
      return [];
    }
  }


}