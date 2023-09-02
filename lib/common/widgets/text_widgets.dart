import 'package:flutter/material.dart';
import 'package:ulearn/common/utils/app_colors.dart';

Widget text24Normal(
    {required String text, Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.normal,
      color: color,
    ),
  );
}

Widget text16Normal(
    {required String text,
    Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: color,
    ),
  );
}
