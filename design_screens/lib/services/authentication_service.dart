import 'dart:convert';

import '../models/credential.dart';
import 'package:http/http.dart' as http;

class AuthenticationService {
  // String _token;
  // DateTime _expiryDate;
  // String _userId;

  Future authenticate(Credential cred) {
    return null;
  }

  Future<void> signUp(Credential cred) {
    const url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDa0c5LExiThOBPvJcelRTtssoZ4225iSk';
    return http
        .post(url,
            body: jsonEncode({
              'emailId': cred.emailId,
              'password': cred.password,
              'returnSecureToken': true
            }))
        .then((response) {
      print(response.body);
    }).catchError((onError) {});
  }

  Future<void> login(Credential cred) {
    const url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyDa0c5LExiThOBPvJcelRTtssoZ4225iSk';
    return http
        .post(url,
            body: jsonEncode({
              'emailId': cred.emailId,
              'password': cred.password,
              'returnSecureToken': true
            }))
        .then((response) {})
        .catchError((onError) {});
  }
}
