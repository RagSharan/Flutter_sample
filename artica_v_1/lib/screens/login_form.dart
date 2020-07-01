import '../widgets/circle_nav_menu.dart';

import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: loginForm(context));
  }

  Widget loginForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            emailField(),
            SizedBox(height: 20),
            passwordField(),
            SizedBox(height: 20),
            submitButton(context),
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
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          prefix: Icon(Icons.email),
          labelText: 'Email',
          hintText: 'you@example.com'),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
          suffix: Icon(Icons.remove_red_eye),
          labelText: 'Password',
          hintText: 'password'),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget submitButton(BuildContext context) {
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
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          Navigator.of(context).pushReplacementNamed(CircleNavMenu.route);
        }
      },
    );
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
