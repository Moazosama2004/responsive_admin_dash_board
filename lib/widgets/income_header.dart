import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';

import 'renge_times.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Income',
          style: AppStyles.font20SemiBold,
        ),
        Spacer(),
        RangeTimes(),
      ],
    );
  }
}
