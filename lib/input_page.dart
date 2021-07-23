import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'icon_button.dart';
import 'dart:async';
import 'results.dart';
import 'bottom_button.dart';
import 'bmi_brain.dart';

enum Gender {
  male,
  female,
  none,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = obj.inactiveCardColor;
  Color femaleCardColor = obj.inactiveCardColor;
  Gender selectedGender = Gender.none;
  int height = 180;
  int weight = 60;
  int age = 20;
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? obj.activeCardColor
                          : obj.inactiveCardColor,
                      cardChild: IconContent(
                        name: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? obj.activeCardColor
                          : obj.inactiveCardColor,
                      cardChild: IconContent(
                        name: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {},
                colour: obj.activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: obj.labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: obj.numberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: obj.labelTextStyle,
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double value) {
                          setState(() {
                            height = value.toInt();
                          });
                        })
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {},
                      colour: obj.activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: obj.labelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                weight.toString(),
                                style: obj.numberTextStyle,
                              ),
                              Text(
                                'kg',
                                style: obj.labelTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButtons(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                onLongPress: () {
                                  _timer = Timer.periodic(
                                      Duration(milliseconds: 100), (timer) {
                                    setState(() {
                                      weight++;
                                    });
                                  });
                                },
                                onLongPressUp: () {
                                  _timer!.cancel();
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              IconButtons(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                onLongPress: () {
                                  _timer = Timer.periodic(
                                      Duration(milliseconds: 100), (timer) {
                                    setState(() {
                                      weight--;
                                    });
                                  });
                                },
                                onLongPressUp: () {
                                  _timer!.cancel();
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {},
                      colour: obj.activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: obj.labelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                age.toString(),
                                style: obj.numberTextStyle,
                              ),
                              Text(
                                'yrs',
                                style: obj.labelTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButtons(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                onLongPress: () {
                                  _timer = Timer.periodic(
                                      Duration(milliseconds: 100), (timer) {
                                    setState(() {
                                      age++;
                                    });
                                  });
                                },
                                onLongPressUp: () {
                                  _timer!.cancel();
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              IconButtons(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                onLongPress: () {
                                  _timer = Timer.periodic(
                                      Duration(milliseconds: 100), (timer) {
                                    setState(() {
                                      age--;
                                    });
                                  });
                                },
                                onLongPressUp: () {
                                  _timer!.cancel();
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              title: 'CALCULATE',
              onPress: () {
                BmiBrain calc = BmiBrain(weight: weight, height: height);
                calc.calcBmi();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmi: calc.getBMI().toUpperCase(),
                      bmiResult: calc.getBmiResult().toUpperCase(),
                      bmiInterpretation:
                          calc.getBmiInterpretation().toUpperCase(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
