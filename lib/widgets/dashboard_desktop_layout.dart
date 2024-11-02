import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/widgets/income_section.dart';
import 'package:responsive_admin_dash_board/widgets/my_card_section.dart';

import 'all_expenses.dart';
import 'custom_drawer.dart';
import 'my_card.dart';
import 'my_card_and_transaction_history_section.dart';
import 'my_cards_page_view.dart';
import 'quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              AllExpenses(),
              SizedBox(
                height: 24,
              ),
              QuickInvoice(),
            ],
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 32),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                MyCardAndTransactionHistorySection(),
                SizedBox(
                  height: 24,
                ),
                Expanded(child: IncomeSection())
              ],
            ),
          ),
        )
      ],
    );
  }
}
