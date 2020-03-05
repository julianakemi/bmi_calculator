import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final buttonText;
  final onPress;

  BottomButton({this.buttonText, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
        ),
        color: kbuttonAccentColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kbottomButtonHeight,
      ),
    );
  }
}
