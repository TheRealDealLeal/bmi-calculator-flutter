import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        color: kBottomBarColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
