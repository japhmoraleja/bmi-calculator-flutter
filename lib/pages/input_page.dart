import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF1d1e33);
const bottomContainerColor = Color(0xff00274a);

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
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, label: 'Male'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, label: 'Female'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10),
            height: 80,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

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
