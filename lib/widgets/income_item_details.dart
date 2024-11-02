import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/models/income_item_details_model.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.item});

  final IncomeItemDetailsModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        item.title,
        style: AppStyles.font16Regular.copyWith(
          color: const Color(0xFF064060),
        ),
      ),
      trailing: Text(
        item.value,
        style: AppStyles.font16Medium.copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: item.color,
          shape: const OvalBorder(),
        ),
      ),
    );
  }
}
