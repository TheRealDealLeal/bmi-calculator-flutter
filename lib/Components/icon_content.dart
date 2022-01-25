import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.gender});

  final String gender;

  @override
  Widget build(BuildContext context) {
    String genderName;
    Icon genderIcon;

    if (gender == 'male') {
      genderName = 'MALE';
      genderIcon = Icon(
        FontAwesomeIcons.mars,
        size: 80,
        color: Color(0xFFb5b6c2),
      );
    } else {
      genderName = 'FEMALE';
      genderIcon = Icon(
        FontAwesomeIcons.venus,
        size: 80,
        color: Color(0xFFb5b6c2),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        genderIcon,
        SizedBox(height: 15),
        Text(genderName, style: kLabelTextStyle),
      ],
    );
  }
}
