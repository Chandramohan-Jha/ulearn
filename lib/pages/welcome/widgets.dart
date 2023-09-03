import 'package:flutter/material.dart';
import 'package:ulearn/common/utils/app_colors.dart';
import 'package:ulearn/common/widgets/app_shadow.dart';
import 'package:ulearn/common/widgets/text_widgets.dart';

Widget appOnboardingPage(
  BuildContext context,
  PageController controller, {
  required String image,
  required String title,
  required String subTitle,
  int index = 0,
}) {
  return Column(
    children: [
      Image.asset(
        'assets/images/$image.png',
        fit: BoxFit.fitWidth,
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        child: text24Normal(text: title),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: text16Normal(text: subTitle),
      ),
      _nextButton(index, controller, context),
    ],
  );
}

Widget _nextButton(int index, PageController controller, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      } else {
        Navigator.pushNamed(context, '/signIn');
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (BuildContext context) => const SignIn(),
        //   ),
        // );
      }
    },
    child: Container(
      width: 325,
      height: 50,
      // color: Colors.blue,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: Center(
          child:
              text16Normal(text: 'Next', color: AppColors.primaryElementText)),
    ),
  );
}
