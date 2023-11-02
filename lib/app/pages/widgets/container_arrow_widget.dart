import 'package:flutter/material.dart';

class ContainerArrowWidget extends StatelessWidget {
  const ContainerArrowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
      child: const Icon(
        Icons.arrow_forward,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
