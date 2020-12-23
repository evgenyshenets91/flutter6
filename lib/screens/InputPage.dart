import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter6/components/IconContent.dart';
import 'package:flutter6/components/ReusableCard.dart';
import 'package:flutter6/screens/resultsPage.dart';
import 'package:flutter6/components/roundIconButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter6/components//bottomButton.dart';
import 'package:flutter6/constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  Color selectedColor;

  int height = 180;

  int weight = 60;

  int age = 20;

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
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      overlayColor: Color(0x29EB1555),
                      thumbColor: BOTTOM_CONTAINER_CARD_COLOR,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: ACTIVE_CARD_COLOR,
                  cardChildren: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Weight', style: LABEL_TEXT_STYLE),
                      Text(weight.toString(), style: NUMBER_TEXT_STYLE),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          SizedBox(width: 15),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: ACTIVE_CARD_COLOR,
                  cardChildren: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Age', style: LABEL_TEXT_STYLE),
                      Text(age.toString(), style: NUMBER_TEXT_STYLE),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(width: 15),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
          BottomButton(
            title: 'CALCULATE',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage()));
            },
          ),
        ],
      ),
    );
  }
}
