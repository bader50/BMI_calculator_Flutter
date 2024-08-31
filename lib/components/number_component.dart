import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NumberComponent extends StatefulWidget {
  const NumberComponent(
      {super.key, required this.title, required this.initNumber});

  final int initNumber;
  final String title;

  @override
  State<NumberComponent> createState() => _NumberComponentState();
}

class _NumberComponentState extends State<NumberComponent> {
  late int number;

  @override
  void initState() {
    number = widget.initNumber;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kActiveCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: kLabelTextStyle,
          ),
          Text(
            number.toString(),
            style: kNumberTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedButton(
                icon: FontAwesomeIcons.minus,
                onPress: () {
                  setState(() {
                    if (number > 0) {
                      number--;
                    }
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              RoundedButton(
                icon: FontAwesomeIcons.plus,
                onPress: () {
                  setState(() {
                    if (number > 0) {
                      number++;
                    }
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
