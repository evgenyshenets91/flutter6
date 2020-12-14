import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableCard.dart';
import 'IconContent.dart';

const BOTTOM_CONTAINER_HEIGHT = 60.0;
const ACTIVE_CARD_COLOR = Color(0xFF1D1E33);
const INACTIVE_CARD_COLOR = Color(0xFF111328);
const BOTTOM_CONTAINER_CARD_COLOR = Colors.red;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  Color selectedColor;

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
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: selectColor(gender: Gender.male),
                  cardChildren: IconContent(
                    icon: FontAwesomeIcons.mars,
                    text: 'Male',
                  ),
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: selectColor(gender: Gender.female),
                  cardChildren: IconContent(
                    icon: FontAwesomeIcons.venus,
                    text: 'Female',
                  ),
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(colour: ACTIVE_CARD_COLOR),
              ),
            ],
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
