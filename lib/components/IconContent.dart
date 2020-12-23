import 'package:flutter/material.dart';

import 'package:flutter6/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80),
        SizedBox(height: 10),
        Text(text, style: LABEL_TEXT_STYLE)
      ],
    );
  }
}
