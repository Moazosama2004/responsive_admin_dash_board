import 'package:flutter/material.dart';

import 'all_expennses_header.dart';
import 'all_expensens_item.dart';
import 'all_expenses_items.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      paddingValue: 20,
      color: Colors.white,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItems(),
        ],
      ),
    );
  }
}
