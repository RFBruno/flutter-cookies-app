import 'package:cookies_app/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  static const background = Color(0xff282A30);
  static const orange = Color(0xffE38035);
  static const buttonColor = Color(0xff363841);
  static const navBarColor = Color(0xff141519);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Cookies App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            highlightColor: orange,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            scaffoldBackgroundColor: background,
          ),
          home: child,
        );
      },
      child: const HomePage(),
    );
  }
}
