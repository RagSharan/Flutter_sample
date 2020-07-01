import './auth_bloc.dart';
import 'package:flutter/material.dart';

class AuthProvider extends InheritedWidget {
  final bloc = AuthBloc();

  AuthProvider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static AuthBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<AuthProvider>()).bloc;
  }
}
