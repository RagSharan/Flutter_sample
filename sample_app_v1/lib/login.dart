import 'package:flutter/material.dart';
//import './home.dart';

class Login extends StatelessWidget {
  static const routeLogin = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginScreen(context),
    );
  }

  Widget loginScreen(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor
            ], begin: Alignment.topLeft, end: Alignment.topRight)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Login',
                      style: TextStyle(fontSize: 40, color: Colors.white)),
                  Text('Welcomme Back',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(85),
                        topRight: Radius.circular(85)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 15.0),
                          blurRadius: 10.0),
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, -10.0),
                          blurRadius: 10.0)
                    ]),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('./lib/assets/musicgirl.jpg'),
                          radius: 110,
                        ),
                        softTextFeild(),
                        // SizedBox(height: 10),
                        // softTextFeild(),
                        SizedBox(height: 30),
                        softButton(context, 'LogIn', 60.0, 60),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            softButton(context, 'Facebook', 50.0, 110.0),
                            softButton(context, 'Google', 50.0, 110.0),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }

  logIn(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }

  Widget softButton(
      BuildContext context, String name, double height, double width) {
    return InkWell(
      onTap: () => logIn(context),
      splashColor: Colors.greenAccent,
      child: Container(
        child: Center(
            child: Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border.all(
                color: Colors.blue, width: 1.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                offset: Offset(10, 10),
                color: Colors.white.withOpacity(0.45),
                blurRadius: 10,
              ),
              BoxShadow(
                  offset: Offset(-10, -10),
                  color: Colors.black12,
                  blurRadius: 10)
            ]),
      ),
    );
  }

  Widget softTextFeild() {
    return Container(
      height: 60,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Colors.blue, width: 1.0, style: BorderStyle.solid),
          boxShadow: [
            BoxShadow(
                offset: Offset(-10, -10),
                color: Colors.black12,
                blurRadius: 10),
            BoxShadow(
              offset: Offset(10, 10),
              color: Colors.white.withOpacity(0.45),
              blurRadius: 10,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
        child: TextFormField(
          autofocus: true,
          // cursorColor: Colors.amber,
          //style: TextStyle(height: 2.0),
          decoration: InputDecoration(
            hintText: 'Enter EmailId',
            prefixIcon: Icon(
              Icons.email,
              color: Colors.deepOrange,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
