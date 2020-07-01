import 'dart:async';

import 'package:rxdart/rxdart.dart';

import '../mixins/validation_bloc.dart';

class AuthBloc extends Object with Validator {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get submitValid =>
      Observable.combineLatest2(email, password, (e, p) => true);

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  submit() {
    final validEmail = _email.value;
    final validPassword = _password.value;
    print('email = $validateEmail and password = $validatePassword');
  }

  dispose() {
    _email.close();
    _password.close();
  }
}

//final authBloc = AuthBloc();
