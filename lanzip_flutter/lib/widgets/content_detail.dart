
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ContentDetailState extends State<ContentDetail> {

  @override
  Widget build(BuildContext context) {

    print( ModalRoute.of(context).settings.arguments );

    return Scaffold(
      appBar: AppBar(
        title: Text("View Detail"),
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


class ContentDetail extends StatefulWidget {
  @override
  createState()=>ContentDetailState();
}