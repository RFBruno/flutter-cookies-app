import 'package:cookies_app/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  static const background = Color(0xff282A30);
  static const orange = Color(0xffE38035);
  static const buttonColor = Color(0xff363841);
  static const navBarColor = Color(0xff141519);
  static var borderColor = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(15),
  );

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
            brightness: Brightness.dark,
            useMaterial3: true,
            highlightColor: orange,
            cardColor: buttonColor,
            bottomAppBarTheme:
                const BottomAppBarTheme().copyWith(color: navBarColor),
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            scaffoldBackgroundColor: background,
            inputDecorationTheme: InputDecorationTheme(
              focusColor: Colors.white,
              enabledBorder: borderColor,
              focusedBorder: borderColor,
              activeIndicatorBorder: const BorderSide(
                color: Colors.white,
              ),
              isDense: true,
              suffixIconColor: Colors.grey.shade300,
            ),
          ),
          home: child,
        );
      },
      child: HomePage(),
    );
  }
}
