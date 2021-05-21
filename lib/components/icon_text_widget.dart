import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final Widget icon;
  final String text;
  IconText({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          icon,
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(text,),
          ),
          SizedBox(width: 30,)
        ],
      ),
    );
  }
}
