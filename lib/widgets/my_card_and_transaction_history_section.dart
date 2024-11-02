import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_admin_dash_board/widgets/my_card_section.dart';

import 'transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        child: Column(
          children: [
            MyCardSection(),
            Divider(
              thickness: 1,
              height: 40,
              color: Color(0xffF1F1F1),
            ),
            TransactionHistory(),
          ],
        ),
        color: Colors.white);
  }
}
