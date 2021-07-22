import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final void Function() onPress;
  BottomButton({required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        padding: EdgeInsets.only(bottom: 20),
        color: obj.bottomButtonColor,
        width: double.infinity,
        height: obj.bottomButtonHeight,
      ),
    );
  }
}
