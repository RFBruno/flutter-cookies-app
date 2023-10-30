import 'package:cookies_app/app/pages/home/widgets/nav_bar_button_widget.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int index = 0;

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
        const Positioned.fill(
          top: -22,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavBarButtonWidget(
                icon: 'assets/images/home-icon.png',
                label: 'Home',
                isSelected: true,
              ),
              SizedBox(width: 40),
              NavBarButtonWidget(
                icon: 'assets/images/search-icon.png',
                label: 'Search',
                isSelected: false,
              ),
              SizedBox(width: 40),
              NavBarButtonWidget(
                icon: 'assets/images/crown-icon.png',
                label: 'Premium',
                isSelected: false,
              ),
            ],
          ),
        )
      ],
    );
  }
}
