import 'package:flutter/material.dart';

import 'all_expenses.dart';
import 'quick_invoice.dart';

class AllExpensensAndQuickInvoice extends StatelessWidget {
  const AllExpensensAndQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}