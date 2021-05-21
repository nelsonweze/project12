import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final List<Widget> children;
  final double height;
  final double width;
  final double radius;
  final double padding;
  bool light;
  RoundedCard(
      {this.children,
      this.height,
      this.width,
      this.radius,
      this.padding,
      this.light = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(top: padding ?? 12.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(178, 197, 222, light ? 0.6 : 0.99),
          borderRadius: BorderRadius.circular(radius ?? 46)),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: children,
      ),
    );
  }
}
