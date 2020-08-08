import 'package:bmi_calculator/pages/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/pages/results_page.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Expanded(
        child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10),
          ),
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
  RoundIconButton({this.icon, this.color, this.add, @required this.onPressed});

  final IconData icon;
  final Color color;
  final Function add;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      child: Icon(icon, color: Colors.white),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF566c8a),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print('calculate');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ResultsPage();
              },
            ),
          );
        },
        child: Center(
          child: Container(
            color: Color(0xFFEB1555),
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            width: double.infinity,
            child: Text(
              'CALCULATE',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
