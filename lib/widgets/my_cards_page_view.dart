import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: const MyCard(),
            ));
    // return PageView.builder(
    //   itemCount: 3,
    //   itemBuilder: (context, index) => const MyCard(),
    // );
  }
}
