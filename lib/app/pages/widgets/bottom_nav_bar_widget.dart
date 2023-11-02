// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cookies_app/app/pages/widgets/nav_bar_button_widget.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  final Function(int page) callbackIndexPage;
  const BottomNavBarWidget({
    Key? key,
    required this.callbackIndexPage,
  }) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int index = 0;
  goToPage(int page) {
    setState(() {
      index = page;
    });
    widget.callbackIndexPage(index);
  }

  isSelected(int page) {
    return index == page;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).bottomAppBarTheme.color,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(45),
            ),
          ),
        ),
        Positioned.fill(
          top: -22,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  goToPage(0);
                },
                child: NavBarButtonWidget(
                  icon: 'assets/images/home-icon.png',
                  label: 'Home',
                  isSelected: isSelected(0),
                ),
              ),
              const SizedBox(width: 40),
              GestureDetector(
                onTap: () {
                  goToPage(1);
                },
                child: NavBarButtonWidget(
                  icon: 'assets/images/search-icon.png',
                  label: 'Search',
                  isSelected: isSelected(1),
                ),
              ),
              const SizedBox(width: 40),
              GestureDetector(
                onTap: () {
                  goToPage(2);
                },
                child: NavBarButtonWidget(
                  icon: 'assets/images/crown-icon.png',
                  label: 'Premium',
                  isSelected: isSelected(2),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
