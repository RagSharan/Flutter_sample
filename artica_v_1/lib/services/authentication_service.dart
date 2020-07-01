import 'dart:convert';

import '../models/credential.dart';
import 'package:http/http.dart' as http;

abstract class AuthenticationService {
  Future<Credential> signIn(Credential cred);

  Future<Credential> register(Credential cred);
}

class AuthentictionServiceImpl extends AuthenticationService {
  String url = '';

  @override
  Future<Credential> signIn(Credential cred) {
    return http.post(url, body: {
      'email': cred.email,
      'password': cred.password,
    }).then((response) {
      print(jsonDecode(response.body));
    }).catchError((error) {
      throw Error();
    });
  }

  @override
  Future<Credential> register(Credential cred) {
    return this.signIn(cred);
  }
}
