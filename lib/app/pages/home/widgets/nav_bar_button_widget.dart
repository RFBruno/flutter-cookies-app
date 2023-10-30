// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NavBarButtonWidget extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;
  const NavBarButtonWidget({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          padding:
              icon.contains('crown-icon') ? null : const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).cardColor,
          ),
          child: Image.asset(
            icon,
            color: isSelected ? Theme.of(context).highlightColor : Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Theme.of(context).highlightColor : Colors.grey,
          ),
        )
      ],
    );
  }
}
