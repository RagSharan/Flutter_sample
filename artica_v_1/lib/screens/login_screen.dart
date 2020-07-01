import 'package:flutter/material.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_provider.dart';

class LoginScreen extends StatelessWidget {
  static final route = '/login';

  @override
  Widget build(BuildContext context) {
    final bloc = AuthProvider.of(context);
    return Scaffold(body: loginForm(context, bloc));
  }

  Widget loginForm(BuildContext context, AuthBloc bloc) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          emailField(bloc),
          SizedBox(height: 20),
          passwordField(bloc),
          SizedBox(height: 20),
          submitButton(context, bloc),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerRight,
            child: OutlineButton(
                onPressed: () {},
                child: Text(
                  'Forget Password',
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                )),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              socialMediaButton('f', Colors.indigo[900]),
              SizedBox(width: 10),
              socialMediaButton('g', Colors.red[600]),
              SizedBox(width: 10),
              socialMediaButton('in', Colors.blue),
            ],
          ),
        ],
      ),
    );
  }

  Widget emailField(AuthBloc authBloc) {
    return StreamBuilder(
        stream: authBloc.email,
        builder: (context, snapshot) {
          return TextFormField(
            onChanged: authBloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefix: Icon(Icons.email),
              labelText: 'Email',
              hintText: 'you@example.com',
              errorText: snapshot.error,
            ),
          );
        });
  }

  Widget passwordField(AuthBloc authBloc) {
    return StreamBuilder(
        stream: authBloc.password,
        builder: (context, snapshot) {
          return TextFormField(
            onChanged: authBloc.changePassword,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              suffix: Icon(Icons.remove_red_eye),
              labelText: 'Password',
              hintText: 'password',
              errorText: snapshot.error,
            ),
          );
        });
  }

  Widget submitButton(BuildContext context, AuthBloc bloc) {
    return StreamBuilder(
        stream: bloc.submitValid,
        builder: (context, snapshot) {
          return RaisedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.lock),
                SizedBox(width: 15),
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            onPressed: snapshot.hasData ? bloc.submit : null,
          );
        });
  }

  Widget socialMediaButton(String text, Color color) {
    return FloatingActionButton(
      onPressed: () {},
      child: Text('$text',
          style: TextStyle(
              color: color,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal)),
      backgroundColor: Colors.grey.shade200,
    );
  }

  // Navigator.of(context).pushReplacementNamed(CircleNavMenu.route);

}
