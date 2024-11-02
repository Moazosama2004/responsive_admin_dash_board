import 'package:flutter/material.dart';

import '../models/all_expenses_item_mode.dart';
import '../utils/app_styles.dart';
import 'all_expensens_item_header.dart';

class InActiveAllExpensensItem extends StatelessWidget {
  const InActiveAllExpensensItem({
    super.key,
    required this.item,
  });

  final AllExpensesItemMode item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensensItemHeader(
            image: item.image,
            isSelected: false,
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            item.title,
            style: AppStyles.font16SemiBold,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            item.date,
            style: AppStyles.font14Regular,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            item.price,
            style: AppStyles.font24SemiBold,
          )
        ],
      ),
    );
  }
}

class ActiveAllExpensensItem extends StatelessWidget {
  const ActiveAllExpensensItem({
    super.key,
    required this.item,
  });

  final AllExpensesItemMode item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensensItemHeader(
            image: item.image,
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            item.title,
            style: AppStyles.font16SemiBold.copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            item.date,
            style: AppStyles.font14Regular.copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            item.price,
            style: AppStyles.font24SemiBold.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
