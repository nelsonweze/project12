import 'package:flutter/material.dart';

TextStyle headingTextSyle(BuildContext context) =>
    Theme.of(context).textTheme.headline5.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        height: 1.2,
        color: Color(0xFF07122F));

TextStyle userNameStyle(BuildContext context) =>
    Theme.of(context).textTheme.subtitle2.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 19,
        height: 0.6,
        color: Color(0xFF07122F));

TextStyle captionStyle(BuildContext context) =>
    Theme.of(context).textTheme.caption.copyWith(color: Colors.black45);
