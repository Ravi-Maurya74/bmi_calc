import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconButtons extends StatelessWidget {
  final void Function() onPress;
  final IconData icon;
  final void Function() onLongPress;
  final void Function() onLongPressUp;
  IconButtons(
      {required this.onPress,
      required this.onLongPress,
      required this.icon,
      required this.onLongPressUp});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      onLongPressUp: onLongPressUp,
      child: FloatingActionButton(
        backgroundColor: Color(0xFF5D5F6E),
        foregroundColor: Colors.white,
        onPressed: onPress,
        heroTag: null,
        child: Icon(
          icon,
          size: 20,
        ),
      ),
    );
  }
}
