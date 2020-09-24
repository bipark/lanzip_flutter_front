import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    print( ModalRoute.of(context).settings.arguments );

    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFF4A148C),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          color: Colors.white,
          height: _screenSize.height * 0.6,
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                ),
                RaisedButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("LOGIN"),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}


class Login extends StatefulWidget {
  @override
  createState()=>LoginState();
}