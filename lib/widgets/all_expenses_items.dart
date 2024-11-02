import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/widgets/all_expensens_item.dart';

import '../models/all_expenses_item_mode.dart';
import '../utils/app_images.dart';

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({super.key});

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {
  bool isSelected = false;
  int active = 0;

  final List<AllExpensesItemMode> items = const [
    AllExpensesItemMode(
      image: Assets.imagesBalanceIcon,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemMode(
      image: Assets.imagesIncomeIcon,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemMode(
      image: Assets.imagesExpensesIcon,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          // refactor this
          if (index == 1) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    isSelected = !isSelected;
                    setState(() {
                      active = index;
                    });
                  },
                  child: AllExpensensItem(
                    item: item,
                    isSelected: active == index,
                  ),
                ),
              ),
            );
          }
          return Expanded(
            child: GestureDetector(
              onTap: () {
                isSelected = !isSelected;
                setState(() {
                  active = index;
                });
              },
              child: AllExpensensItem(
                item: item,
                isSelected: active == index,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
