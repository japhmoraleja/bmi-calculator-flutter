import 'package:flutter/material.dart';

const activeCardColor = Color(0xff00274a);
const inactiveCardColor = Color(0xFF00162A);

const kLabelTextStyle = TextStyle(
  fontSize: 18,
  color: Colors.white,
);

const kNumberTextStyle = TextStyle(fontSize: 70.0, fontWeight: FontWeight.w900);

const kLowerNumberTextStyle =
    TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900);

enum Gender {
  male,
  female,
}

Gender selectedGender;

int height = 160;

int weight = 60;
