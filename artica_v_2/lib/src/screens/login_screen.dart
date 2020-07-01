import 'package:artica_v_2/src/screens/circular_navigation.dart';

import '../blocs/auth_provider.dart';
import '../blocs/auth_bloc.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authBloc = AuthProvider.of(context);
    return Scaffold(
      body: loginContainer(context, authBloc),
    );
  }

  Widget loginContainer(BuildContext context, AuthBloc authBloc) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          emailFeild(authBloc),
          SizedBox(height: 10),
          passwordFeild(authBloc),
          SizedBox(height: 20),
          loginButton(context, authBloc),
        ],
      ),
    );
  }

  Widget emailFeild(AuthBloc authBloc) {
    return StreamBuilder(
        stream: authBloc.email,
        builder: (contex, snapshot) {
          return TextFormField(
            onChanged: authBloc.changeEmail,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'you@example.com',
              suffixIcon: Icon(Icons.email),
              errorText: snapshot.error,
            ),
          );
        });
  }

  Widget passwordFeild(AuthBloc authBloc) {
    return StreamBuilder(
        stream: authBloc.password,
        builder: (context, snapshot) {
          return TextFormField(
            onChanged: authBloc.changePassword,
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Password',
                suffixIcon: Icon(Icons.remove_red_eye),
                errorText: snapshot.error),
          );
        });
  }

  Widget loginButton(BuildContext context, AuthBloc authBloc) {
    return StreamBuilder(
        stream: authBloc.validSubmit,
        builder: (context, snapshot) {
          return RaisedButton(
            child: Text(
              'Login',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              //snapshot.hasData ? authBloc.submit : null;
              if (snapshot.hasData) {
                // authBloc.submit();
                Navigator.pushReplacementNamed(
                    context, CircularNavigation.routeName);
              } else
                return null;
            },
          );
        });
  }
}
