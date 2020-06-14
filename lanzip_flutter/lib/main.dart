import 'package:flutter/material.dart';
import 'package:lanzip/widgets/content.dart';
import 'package:provider/provider.dart';

import 'package:lanzip/widgets/content_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/main': (context) => ContentList(),
          '/detail': (context) => ContentDetail(),
        },
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ContentList(),
      )
    );
  }
}
