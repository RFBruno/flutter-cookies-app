import 'package:cookies_app/app/pages/widgets/horizontal_cookie_card_widget.dart';
import 'package:flutter/material.dart';

class PremiumPage extends StatelessWidget {
  const PremiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HorizontalCookieCardWidget(),
        SizedBox(height: 20),
        HorizontalCookieCardWidget(),
      ],
    );
  }
}
