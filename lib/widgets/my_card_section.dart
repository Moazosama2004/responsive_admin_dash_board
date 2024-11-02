import 'package:flutter/material.dart';

import 'package:responsive_admin_dash_board/utils/app_styles.dart';
import 'package:responsive_admin_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_admin_dash_board/widgets/my_card.dart';
import 'package:responsive_admin_dash_board/widgets/my_cards_page_view.dart';
import 'package:responsive_admin_dash_board/widgets/transaction_history.dart';

import 'custom_dot_indicator.dart';
import 'dot_indicator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.font20SemiBold.copyWith(
            color: const Color(0xFF064060),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomDotIndicator(
          currentPageIndex: currentPage,
        ),
    
      ],
    );
  }
}

