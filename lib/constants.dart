import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Constants {
  final bottomButtonHeight = 80.0;
  final bottomButtonColor = Color(0xFFE83D66);
  final activeCardColor = Color(0xFF323244);
  final inactiveCardColor = Color(0xFF24263B);

  final labelTextStyle = TextStyle(
    color: CupertinoColors.white,
    fontSize: 18,
  );
  final numberTextStyle = TextStyle(
    color: CupertinoColors.white,
    fontSize: 50,
    fontWeight: FontWeight.w900,
  );
}

Constants obj = Constants();
