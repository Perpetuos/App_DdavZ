import 'dart:ui';

import 'package:flutter/material.dart';

class Small extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  Small({
    Key? key,
    this.color = const Color(0xFF5FCDE4),
    required this.text,
    this.size = 14,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: text,
        style: TextStyle(
            fontFamily: 'roboto', color: color, fontSize: size, height: height),
      ),
      const WidgetSpan(child: SizedBox(width: 10)),
      TextSpan(
        text: text,
        style: TextStyle(
            fontFamily: 'roboto',
            color: Colors.white,
            fontSize: size,
            height: height),
      )
    ]));
  }
}
