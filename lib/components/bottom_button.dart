import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.text, required this.onPressed});

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            text,
            style: kTextBottomStyle,
          ),
        ),
      ),
    );
  }
}
