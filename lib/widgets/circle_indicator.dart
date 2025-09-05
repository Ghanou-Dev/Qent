import 'package:flutter/material.dart';

class CircelIndicator extends StatelessWidget {
  final bool isActive;
  const CircelIndicator({required this.isActive, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isActive ? Color(0xffd7d7d7) : Color(0xff9CA3AF),
      ),
      height: 8,
      width: isActive ? 24.87 : 8,
    );
  }
}
