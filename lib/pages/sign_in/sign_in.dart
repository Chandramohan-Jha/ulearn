import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearn/common/widgets/button_widget.dart';
import 'package:ulearn/common/widgets/text_widgets.dart';
import 'package:ulearn/pages/sign_in/widgets/sign_in_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: appBar(),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top login buttons
                thirdPartyLogin(),

                // more login options message
                Center(
                    child: text14Normal(
                        text: 'Or use your email account to login')),
                SizedBox(height: 50.h),
                //Email text box
                appTextField(
                    text: 'Email',
                    iconName: 'user',
                    hintText: 'Enter your email address'),
                SizedBox(height: 20.h),
                //Password text box
                appTextField(
                    text: 'Password',
                    iconName: 'lock',
                    hintText: 'Enter your password',
                    obscureText: true),
                SizedBox(height: 20.h),
                //forgot password
                Container(
                  margin: EdgeInsets.only(left: 25.w),
                  child: textUnderLine(text: 'Forgot password?'),
                ),
                SizedBox(height: 100.h),
                //App Login Button
                Center(child: appButton(buttonName: 'Login')),
                SizedBox(height: 20.h),
                Center(child: appButton(buttonName: 'Register', isBlue: false)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
