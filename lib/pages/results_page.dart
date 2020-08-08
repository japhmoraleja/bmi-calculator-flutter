import 'package:bmi_calculator/pages/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/pages/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text('Results'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  'Your Results',
                  style: kTitleTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('taba', style: kNormalTextStyle),
                    Text('20.0', style: kBMITextStyle),
                    Text('Interpretation', style: kInterpretationTextStyle),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              buttonText: 'Test Again',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
