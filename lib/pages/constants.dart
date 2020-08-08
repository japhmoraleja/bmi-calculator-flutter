import 'package:flutter/material.dart';

const activeCardColor = Color(0xff00274a);
const inactiveCardColor = Color(0xFF00162A);

const kLabelTextStyle = TextStyle(
  fontSize: 18,
  color: Colors.white,
);

const kNumberTextStyle = TextStyle(fontSize: 70.0, fontWeight: FontWeight.w900);

const kTitleTextStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.w900);

const kNormalTextStyle = TextStyle(
  fontSize: 30,
  color: Colors.green,
);

const kOverwightTextStyle = TextStyle(fontSize: 30, color: Colors.orange);

const kObeseTextStyle = TextStyle(fontSize: 30, color: Colors.red);

const kUnderweightTextStyle = TextStyle(fontSize: 30, color: Colors.yellow);

const kBMITextStyle = TextStyle(fontSize: 100, fontWeight: FontWeight.w900);

const kInterpretationTextStyle = TextStyle(
  fontSize: 20,
);

const kLowerNumberTextStyle =
    TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900);

enum Gender {
  male,
  female,
}

Gender selectedGender;

int height = 160;

int weight = 60;

int age = 18;
