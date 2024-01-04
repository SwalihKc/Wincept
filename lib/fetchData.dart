import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wincept/LoginModel.dart';

Future<LoginModel> createAlbum(String userName, String password) async {
  final response = await http.post(
    Uri.parse('https://stuverse.shop/api/login/'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode(
        <String, String>{"username": userName, "password": password}),
  );
  print(response.body);

  if (response.statusCode == 201) {
    return LoginModel.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to create album.');
  }
}
