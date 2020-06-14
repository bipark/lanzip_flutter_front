import 'package:flutter/material.dart';
import 'package:lanzip/widgets/content.dart';
import 'package:provider/provider.dart';

import 'package:lanzip/widgets/content_detail.dart';
import 'package:lanzip/widgets/login.dart';

import 'package:lanzip/provider/user.dart';

void main() => runApp(
  ChangeNotifierProvider(
    builder: (context)=>UserProvider(),
    child: MyApp(),
  )
);


class MyApp extends StatelessWidget {

  var login = false;

  @override
  Widget build(BuildContext context) {

    final UserProvider usr = Provider.of<UserProvider>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_)=>UserProvider(),)
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/main': (context) => ContentList(),
          '/detail': (context) => usr.login ? ContentDetail() : Login(),
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

