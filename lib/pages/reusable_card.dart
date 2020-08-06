import 'package:flutter/material.dart';
import 'package:bmi_calculator/pages/input_page.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: bottomContainerColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
