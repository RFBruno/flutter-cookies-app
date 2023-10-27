import 'package:cookies_app/app/pages/home/widgets/avatar_widget.dart';
import 'package:cookies_app/app/pages/home/widgets/cart_widget.dart';
import 'package:cookies_app/app/pages/home/widgets/cookies_bar_widget.dart';
import 'package:cookies_app/app/pages/home/widgets/personal_info_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 24),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AvatarWidget(),
                SizedBox(width: 15),
                PersonalInfoWidget(),
                Spacer(),
                CartWidget()
              ],
            ),
            CookiesBarWidget()
          ],
        ),
      ),
    );
  }
}
