import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersBarWidget extends StatelessWidget {
  const OffersBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Cookies',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36.sp,
          ),
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
