import 'package:flutter/material.dart';
import 'package:flutter6/components/ReusableCard.dart';
import 'package:flutter6/components/bottomButton.dart';

import 'package:flutter6/constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child:
                  Center(child: Text('Your Results', style: TITLE_TEXT_STYLE))),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: ACTIVE_CARD_COLOR,
              cardChildren: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Normal', style: RESULTS_TEXT_STYLE),
                  Text('18.3', style: BMI_TEXT_STYLE),
                  Text(
                    'Your BMI Results is quite low, you should eat more',
                    style: BMI_BODY_TEXT_STYLE,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
