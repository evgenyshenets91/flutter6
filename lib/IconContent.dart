import 'package:flutter/material.dart';

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
        Text(text, style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)))
      ],
    );
  }
}
