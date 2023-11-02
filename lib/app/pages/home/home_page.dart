// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cookies_app/app/models/cookie_model.dart';
import 'package:cookies_app/app/pages/premium/premium_page.dart';
import 'package:cookies_app/app/pages/search/search_page.dart';
import 'package:cookies_app/app/pages/widgets/avatar_widget.dart';
import 'package:cookies_app/app/pages/widgets/bottom_nav_bar_widget.dart';
import 'package:cookies_app/app/pages/widgets/cart_widget.dart';
import 'package:cookies_app/app/pages/widgets/cookie_card.dart';
import 'package:cookies_app/app/pages/widgets/cookies_bar_widget.dart';
import 'package:cookies_app/app/pages/widgets/horizontal_cookie_card_widget.dart';
import 'package:cookies_app/app/pages/widgets/offers_bar_widget.dart';
import 'package:cookies_app/app/pages/widgets/personal_info_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final controllerPageView = PageController();

  goToPage(int indexPage) {
    controllerPageView.animateToPage(indexPage,
        duration: const Duration(milliseconds: 450), curve: Curves.easeOut);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(size: size, controllerPageView: controllerPageView),
      bottomNavigationBar: BottomNavBarWidget(callbackIndexPage: goToPage),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key, required this.size, required this.controllerPageView})
      : super(key: key);

  final Size size;
  final PageController controllerPageView;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, bottom: 30, left: 24, right: 24),
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
          Expanded(
            child: PageView(
              clipBehavior: Clip.none,
              controller: widget.controllerPageView,
              children: <Widget>[
                PageOfHome(size: widget.size),
                PageOfSearch(size: widget.size),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PageOfPremium extends StatelessWidget {
  final Size size;
  const PageOfPremium({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return const PremiumPage();
  }
}

class PageOfSearch extends StatelessWidget {
  final Size size;
  const PageOfSearch({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * .03),
          const SearchPage(),
        ],
      ),
    );
  }
}

class PageOfHome extends StatelessWidget {
  final Size size;
  const PageOfHome({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
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
        const HorizontalCookieCardWidget(),
      ],
    );
  }
}
