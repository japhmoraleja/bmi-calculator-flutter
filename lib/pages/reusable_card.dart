import 'package:bmi_calculator/pages/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class FineTuneCard extends StatelessWidget {
  FineTuneCard({this.colour2, this.cardChild2, this.onPress2});

  final Color colour2;
  final Widget cardChild2;
  final Function onPress2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress2,
      child: Container(
        child: cardChild2,
        decoration: BoxDecoration(
          color: inactiveCardColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.color});

  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: Colors.white),
      onPressed: () {},
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF566c8a),
    );
  }
}
