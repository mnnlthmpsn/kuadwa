import 'dart:convert';
import 'package:http/http.dart' as http;


var url = 'https://kuadwa.com/api';

Future getFarms() async {
  var headers = {"Content-Type": "application/json;charset=UTF-8"};

  return await http
      .get(Uri.parse(url + '/profile/all_farms'), headers: headers)
      .then((response) => jsonDecode(response.body))
      .catchError((err) => throw err);
}

Future getAgriBus() async {
  var headers = {"Content-Type": "application/json;charset=UTF-8"};

  return await http
      .get(Uri.parse(url + '/profile/all_businesses'), headers: headers)
      .then((response) => jsonDecode(response.body))
      .catchError((err) => throw err);
}
