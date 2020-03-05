import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation,
      @required this.information});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String information;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(), style: kResultLabelTextStyle),
                  Text(bmiResult, style: kResultTextStyle),
                  Text('Normal BMI range: \n 18.5 - 25 kg / m2',
                      style: kBodyTextStyle),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  FlatButton(
                    color: Color(0xFF181A2E),
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 70),
                    child: Text('SAVE RESULT', style: kSecondaryButton),
                    onPressed: () {
                      print('Results Saved');
                    },
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
              ),
              color: kbuttonAccentColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kbottomButtonHeight,
            ),
          ),
        ],
      ),
    );
  }
}
