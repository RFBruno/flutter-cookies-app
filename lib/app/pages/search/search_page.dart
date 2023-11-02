import 'package:cookies_app/app/pages/widgets/horizontal_cookie_card_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          cursorColor: Colors.white,
          decoration: const InputDecoration(
            hintText: 'Cookies',
            suffixIcon: Icon(
              Icons.search_outlined,
              size: 30,
            ),
          ),
        ),
        const SizedBox(height: 15),
        ...[1, 2, 3, 4, 5, 6].map((index) {
          return const Column(
            children: [
              SizedBox(height: 15),
              HorizontalCookieCardWidget(),
            ],
          );
        }).toList(),
      ],
    );
  }
}
