import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/pages/icon_content.dart';
import 'package:bmi_calculator/pages/reusable_card.dart';
import 'package:bmi_calculator/pages/constants.dart';

//
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                // male
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                      print('male');
                    },
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, label: 'Male'),
                  ),
                ),
                // female
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                      print('female');
                    },
                    colour: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, label: 'Female'),
                  ),
                ),
              ],
            ),
          ),
          // slider
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text('180', style: kNumberTextStyle),
                      SizedBox(width: 10),
                      Text(
                        'cm',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // bottom widgets
          Expanded(
            child: Row(
              children: <Widget>[
                // l1
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                // l2
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          // calculate
          GestureDetector(
            onTap: () {
              print('calculate');
            },
            child: Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              height: 80,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
