import 'package:cookies_app/app/pages/home/widgets/container_arrow_widget.dart';
import 'package:cookies_app/app/pages/home/widgets/premium_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalCookieCardWidget extends StatelessWidget {
  const HorizontalCookieCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * .14,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                child: Image.asset("assets/images/cookie-001.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Double\nchocolate',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const PremiumWidget()
                      ],
                    ),
                    const SizedBox(width: 24),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '\$ 20,00',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          '\$ 12,00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: ContainerArrowWidget(),
        )
      ],
    );
  }
}
