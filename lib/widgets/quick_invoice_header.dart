import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.font20SemiBold.copyWith(
            color: const Color(0xFF064060),
          ),
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: const Color(0xFFFAFAFA),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 18,
              color: Color(0xFF4DB7F2),
            ),
          ),
        ),
      ],
    );
  }
}