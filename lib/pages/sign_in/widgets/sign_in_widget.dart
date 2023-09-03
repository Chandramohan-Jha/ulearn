import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearn/common/utils/app_colors.dart';
import 'package:ulearn/common/widgets/app_shadow.dart';
import 'package:ulearn/common/widgets/image_widget.dart';
import 'package:ulearn/common/widgets/text_widgets.dart';

AppBar appBar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(10),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        height: 1,
      ),
    ),
    title: text16Normal(text: 'Login', color: AppColors.primaryText),
  );
}

Widget thirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(left: 80.w, right: 80.w, top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton('google'),
        _loginButton('apple'),
        _loginButton('facebook'),
      ],
    ),
  );
}

Widget _loginButton(String image) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      height: 40.h,
      width: 40.w,
      child: Image.asset('assets/icons/$image.png'),
    ),
  );
}

Widget appTextField({
  required String text,
  required String iconName,
  String hintText = 'Type in your info',
  bool obscureText = false,
}) {
  return Container(
    padding: EdgeInsets.only(left: 25.w, right: 25.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        SizedBox(height: 5.h),
        Container(
          width: 325.w,
          height: 50.h,
          decoration: appBoxDecorationTextField(),

          //Row contains the icon and textField
          child: Row(
            children: [
              //Icon
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: appImage(image: iconName),
              ),

              //TextField
              SizedBox(
                height: 50.h,
                width: 270.w,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: hintText, border: InputBorder.none),
                  onChanged: (value) {},
                  maxLines: 1,
                  autocorrect: false,
                  obscureText: obscureText,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
