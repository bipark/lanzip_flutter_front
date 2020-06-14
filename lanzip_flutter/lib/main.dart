import 'package:flutter/material.dart';
import 'package:lanzip/widgets/content.dart';
import 'package:provider/provider.dart';

import 'package:lanzip/widgets/content_detail.dart';
import 'package:lanzip/widgets/login.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  var login = false;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/main': (context) => ContentList(),
          '/detail': (context) => login ? ContentDetail() : Login(),
        },
        navigatorObservers: [],
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ContentList(),
      )
    );
  }
}

