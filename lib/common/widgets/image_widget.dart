import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appImage({
  required String image,
  double height = 16,
  double width = 16,
}) {
  return Image.asset('assets/icons/$image.png',
      height: height.h, width: width.w);
}
