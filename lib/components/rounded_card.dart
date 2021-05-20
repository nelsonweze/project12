import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final List<Widget> children;
  final double height;
  final double width;
  final double radius;
  final double padding;
  RoundedCard(
      {this.children, this.height, this.width, this.radius, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(radius ?? 46)),
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: padding ?? 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: children,
        ),
      ),
    );
  }
}
