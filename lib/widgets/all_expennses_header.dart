import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';

import 'renge_times.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.font20SemiBold,
        ),
        Spacer(),
        RangeTimes(),
      ],
    );
  }
}
