import 'package:flutter/material.dart';

const BOTTOM_CONTAINER_HEIGHT = 60.0;
const ACTIVE_CARD_COLOR = Color(0xFF1D1E33);
const BOTTOM_CONTAINER_CARD_COLOR = Colors.redAccent;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: ReusableCard(colour: ACTIVE_CARD_COLOR),
              ),
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

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      margin: EdgeInsets.all(15),
    );
  }
}
