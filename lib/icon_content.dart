import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final String name;
  final IconData icon;
  IconContent({required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          name,
          style: obj.labelTextStyle,
        ),
      ],
    );
  }
}
