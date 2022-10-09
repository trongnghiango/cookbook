import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/model.dart';

const url = "https://9a89-27-74-11-114.ap.ngrok.io";

class GetEmployee {
  String getPath() {
    return '$url/employees';
  }

  Future<List<Employees>> getEmployees() async {
    final res = await http.get(Uri.parse(getPath()));

    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      List data = json['data'];
      return data.map((employees) => Employees.fromJson(employees)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
