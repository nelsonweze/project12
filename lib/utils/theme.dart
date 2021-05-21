import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const primarySwatch = const MaterialColor(0xFFB2C5DE, {
  50: Color(0xFFF6F8FB),
  100: Color(0xFFE8EEF5),
  200: Color(0xFFD9E2EF),
  300: Color(0xFFC9D6E8),
  400: Color(0xFFBECEE3),
  500: Color(0xFFB2C5DE),
  600: Color(0xFFABBFDA),
  700: Color(0xFFA2B8D5),
  800: Color(0xFF99B0D1),
  900: Color(0xFF8AA3C8),
});

appTheme() => ThemeData(
    primarySwatch: primarySwatch,
    textTheme: Typography.blackCupertino.copyWith(
        bodyText2: TextStyle(
            fontSize: 17,
            height: 1.5,
            fontFamily: 'SF Pro Text Regular',
            color: Color(0xFF15243C)),
        headline6: TextStyle(fontFamily: 'Radiate Sans'),
        headline5: TextStyle(fontFamily: 'Radiate Sans')),
    cupertinoOverrideTheme: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
            textStyle: TextStyle(
                fontSize: 17, height: 1.4, fontFamily: 'Radiate Sans'))));
