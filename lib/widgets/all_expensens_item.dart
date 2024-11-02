import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/models/all_expenses_item_mode.dart';
import 'package:responsive_admin_dash_board/utils/app_images.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';
import 'package:responsive_admin_dash_board/widgets/in_active_and_active_all_expensens_item.dart';

import 'all_expensens_item_header.dart';

class AllExpensensItem extends StatelessWidget {
  const AllExpensensItem(
      {super.key, required this.item, required this.isSelected});
  final AllExpensesItemMode item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensensItem(item: item)
        : InActiveAllExpensensItem(item: item);
  }
}
