import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmi, bmiResult, bmiInterpretation;
  ResultPage(
      {required this.bmi,
      required this.bmiResult,
      required this.bmiInterpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Expanded(
                child: Text(
                  'Your Results',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              padding: EdgeInsets.only(
                top: 20,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                onPress: () {},
                colour: Color(0xFF323244),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiResult,
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmi,
                      style: TextStyle(
                        fontSize: 90,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        bmiInterpretation,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              title: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        padding: EdgeInsets.only(top: 50),
      ),
    );
  }
}
