import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearn/common/utils/app_colors.dart';
import 'package:ulearn/common/widgets/app_shadow.dart';
import 'package:ulearn/common/widgets/text_widgets.dart';

Widget appButton(
    {required String buttonName,
    double height = 50,
    double width = 325,
    bool isBlue = true}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: height.h,
      width: width.w,
      decoration: appBoxShadow(
          color: isBlue
              ? AppColors.primaryElement
              : AppColors.primarySecondaryBackground,
          border: Border.all(color: AppColors.primaryFourElementText)),
      child: Center(
          child: text16Normal(
              text: buttonName,
              color: isBlue
                  ? AppColors.primaryElementText
                  : AppColors.primaryText)),
    ),
  );
}
