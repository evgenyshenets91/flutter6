import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChildren});

  final Color colour;
  final Widget cardChildren;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChildren,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      margin: EdgeInsets.all(15),
    );
  }
}
