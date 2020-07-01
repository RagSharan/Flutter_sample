import 'package:artica_v_2/src/blocs/auth_bloc.dart';
import 'package:flutter/material.dart';

class AuthProvider extends InheritedWidget {
  final authBloc = AuthBloc();

  AuthProvider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static AuthBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<AuthProvider>())
        .authBloc;
  }
}
