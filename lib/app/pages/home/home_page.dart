import 'package:cookies_app/app/models/cookie_model.dart';
import 'package:cookies_app/app/pages/home/widgets/avatar_widget.dart';
import 'package:cookies_app/app/pages/home/widgets/cart_widget.dart';
import 'package:cookies_app/app/pages/home/widgets/cookie_card.dart';
import 'package:cookies_app/app/pages/home/widgets/cookies_bar_widget.dart';
import 'package:cookies_app/app/pages/home/widgets/horizontal_cookie_card_widget.dart';
import 'package:cookies_app/app/pages/home/widgets/offers_bar_widget.dart';
import 'package:cookies_app/app/pages/home/widgets/personal_info_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(size: size),
      // bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AvatarWidget(),
              SizedBox(width: 15),
              PersonalInfoWidget(),
              Spacer(),
              CartWidget()
            ],
          ),
          const CookiesBarWidget(),
          SizedBox(height: size.height * .12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: cookies
                .map(
                  (cookie) => CookieCard(
                    cookieModel: cookie,
                  ),
                )
                .toList(),
          ),
          const OffersBarWidget(),
          const HorizontalCookieCardWidget()
        ],
      ),
    );
  }
}
