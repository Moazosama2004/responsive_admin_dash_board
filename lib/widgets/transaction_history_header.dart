import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style:
              AppStyles.font20SemiBold.copyWith(color: const Color(0xFF064060)),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text(
            'See all',
            style:
                AppStyles.font16Medium.copyWith(color: const Color(0xFF4EB7F2)),
          ),
        )
      ],
    );
  }
}
