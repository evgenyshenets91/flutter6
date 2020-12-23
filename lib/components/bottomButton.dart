import 'package:flutter/material.dart';

import 'package:flutter6/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.title, @required this.onTap});

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(title,
                style: LABEL_TEXT_STYLE.copyWith(color: Colors.white))),
        color: BOTTOM_CONTAINER_CARD_COLOR,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: BOTTOM_CONTAINER_HEIGHT,
      ),
    );
  }
}
