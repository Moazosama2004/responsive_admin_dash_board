import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/models/transaction_item_model.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';
import 'package:responsive_admin_dash_board/widgets/transaction_item.dart';

import 'transaction_history_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  final List<TransactionItemModel> transactionItem = const [
    TransactionItemModel(
        processName: 'Cash Withdrawal',
        price: r'$20,129',
        date: '13 Apr, 2022 '),
    TransactionItemModel(
        processName: 'Landing Page project',
        price: r'$2,000',
        date: '13 Apr, 2022 at 3:30 PM'),
    TransactionItemModel(
        processName: 'Juni Mobile App project',
        price: r'$20,129',
        date: '13 Apr, 2022 at 3:30 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '13 April 2022',
            style:
                AppStyles.font16Medium.copyWith(color: const Color(0xFFAAAAAA)),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          children: transactionItem
              .map((e) => TransactionItem(
                    item: e,
                  ))
              .toList(),
        ),
      ],
    );
  }
}
