import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableCard.dart';
import 'IconContent.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  Color selectedColor;

  int height = 180;

  Color selectColor({Gender gender}) {
    return selectedGender == gender ? ACTIVE_CARD_COLOR : INACTIVE_CARD_COLOR;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: selectColor(gender: Gender.male),
                  cardChildren:
                      IconContent(icon: FontAwesomeIcons.mars, text: 'Male'),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: selectColor(gender: Gender.female),
                  cardChildren:
                      IconContent(icon: FontAwesomeIcons.venus, text: 'Female'),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                ),
              ),
            ],
          )),
          Expanded(
              child: ReusableCard(
            colour: ACTIVE_CARD_COLOR,
            cardChildren: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Height',
                  style: LABEL_TEXT_STYLE,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: <Widget>[
                    Text(height.toString(), style: NUMBER_TEXT_STYLE),
                    Text('cm', style: LABEL_TEXT_STYLE),
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue) {
                    setState(() {
                      height = newValue.round();
                    });
                  },
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(colour: ACTIVE_CARD_COLOR),
              ),
              Expanded(
                child: ReusableCard(colour: ACTIVE_CARD_COLOR),
              ),
            ],
          )),
          Container(
            color: BOTTOM_CONTAINER_CARD_COLOR,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: BOTTOM_CONTAINER_HEIGHT,
          ),
        ],
      ),
    );
  }
}
