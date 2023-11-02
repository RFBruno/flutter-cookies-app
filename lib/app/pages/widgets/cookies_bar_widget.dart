import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CookiesBarWidget extends StatelessWidget {
  const CookiesBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Text(
              'Cookies',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36.sp,
              ),
            ),
            Text(
              'Premium',
              style: TextStyle(
                color: Theme.of(context).highlightColor,
                fontSize: 24.sp,
              ),
            ),
          ],
        ),
        Text(
          'See more',
          style: TextStyle(
            color: Theme.of(context).highlightColor,
            fontSize: 13.sp,
          ),
        ),
      ],
    );
  }
}
