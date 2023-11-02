// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cookies_app/app/models/cookie_model.dart';
import 'package:cookies_app/app/pages/widgets/container_arrow_widget.dart';
import 'package:cookies_app/app/pages/widgets/premium_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CookieCard extends StatelessWidget {
  final CookieModel cookieModel;
  const CookieCard({
    Key? key,
    required this.cookieModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cookieSize = size.height * .16;
    var cardSize = size.height * .20;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: cardSize,
          width: cardSize,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 32, top: 32, bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cookieModel.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
                const PremiumWidget(),
                Text(
                  cookieModel.price,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -(cookieSize - 42),
          left: (cardSize - cookieSize) / 2,
          child: SizedBox(
            height: cookieSize,
            width: cookieSize,
            child: Image.asset(cookieModel.image),
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          child: ContainerArrowWidget(),
        ),
      ],
    );
  }
}
