import 'package:flutter/material.dart';
import 'package:vs_code_app/contants.dart';
import 'package:vs_code_app/widgets/bottom_button.dart';
import '../widgets/reusable_card.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.resultText, @required this.bmiValue, @required this.interpretation});

  final String resultText;
  final String bmiValue;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Your Result',
                style: kResultTitleText,
                
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultText,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmiValue,
                    style: kBMIValueText,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0, right: 8.0),
                    child: Text(
                      interpretation,
                      style: kBMIBottomText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onTap:(){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
