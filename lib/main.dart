import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project12/utils/utils.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: primarySwatch,
          textTheme: Typography.blackCupertino.copyWith(
            bodyText2: TextStyle(fontSize: 17, height: 1.4),
          ),
          cupertinoOverrideTheme: CupertinoThemeData(
              textTheme: CupertinoTextThemeData(
                  textStyle: TextStyle(fontSize: 17, height: 1.4)))),
      home: MyHomePage(),
    );
  }
}
