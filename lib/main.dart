import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ulearn/common/utils/app_styles.dart';
import 'package:ulearn/pages/sign_in/sign_in.dart';
import 'package:ulearn/pages/welcome/welcome.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.appThemeData,
            initialRoute: '/',
            routes: {
              '/': (context) => Welcome(),
              '/signIn': (context) => const SignIn()
            },
            // home: Welcome(),
          );
        });
  }
}
