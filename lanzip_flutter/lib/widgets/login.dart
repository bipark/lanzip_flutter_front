import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    print( ModalRoute.of(context).settings.arguments );

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}


class Login extends StatefulWidget {
  @override
  createState()=>LoginState();
}