import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PremiumWidget extends StatelessWidget {
  const PremiumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.crown,
          color: Theme.of(context).highlightColor,
          size: 14.sp,
        ),
        const SizedBox(width: 8),
        Text(
          'Premium',
          style: TextStyle(
            color: Theme.of(context).highlightColor,
            fontSize: 16.sp,
          ),
        )
      ],
    );
  }
}
