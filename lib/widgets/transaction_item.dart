import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/models/transaction_item_model.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.item});

  final TransactionItemModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            item.processName,
            style: AppStyles.font16SemiBold.copyWith(
              color: const Color(0xFF064060),
            ),
          ),
          subtitle: Text(
            item.date,
            style: AppStyles.font16Regular.copyWith(
              color: const Color(0xFFAAAAAA),
            ),
          ),
          trailing: Text(
            item.price,
            style: AppStyles.font20SemiBold.copyWith(
              color: isRed(item.processName)
                  ? Color(0xFFF3735E)
                  : Color(0xFF7CD87A),
            ),
          ),
        ),
      ),
    );
  }

  bool isRed(String processName) {
    if (processName.contains('Withdrawal')) {
      return true;
    }
    return false;
  }
}
