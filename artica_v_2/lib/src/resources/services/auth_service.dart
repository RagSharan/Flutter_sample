import 'dart:convert';

import 'package:http/http.dart' show Client;

class AuthService {
  final String url = '';
  Client client = Client();

  login() async {
    final response = await client.get(url);
    final String token = json.decode(response.body);

    return token;
  }

  register() {}
}
