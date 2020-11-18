import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String title;

  HeadingText(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
