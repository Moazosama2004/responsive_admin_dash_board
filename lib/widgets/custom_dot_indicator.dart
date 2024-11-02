import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/widgets/dot_indicator.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.currentPageIndex});

  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: DotIndicator(
            isActive: index == currentPageIndex,
          ),
        ),
      ),
    );
  }
}
