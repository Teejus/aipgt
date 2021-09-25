import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class NetworkCall {
  static Future getData(String url) async {
    try {
      http.Response response = await http.get(
        Uri.parse(url),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        return data;
      }
    } catch (e) {
      Fluttertoast.showToast(msg: 'Something went Wrong!');
      // ignore: avoid_print
      print(e.toString());
    }
  }
}
