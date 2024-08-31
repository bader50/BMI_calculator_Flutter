import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, required this.icon, required this.onPress});

  final IconData icon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      fillColor: kFloatingButtonColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      elevation: 0,
      child: Icon(icon),
    );
  }
}
