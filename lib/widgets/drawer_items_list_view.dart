import 'dart:developer';

import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  bool isActive = true;
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(
      image: Assets.imagesDashboardIcon,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: Assets.imagesMyTransactionIcon,
      title: 'My Transaction',
    ),
    DrawerItemModel(
      image: Assets.imagesStatisticsIcon,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: Assets.imagesWalletAccountIcon,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: Assets.imagesMyInvestmentIcon,
      title: 'My Investments',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex == index) {
          } else {
            setState(() {});
            activeIndex = index;
            log(activeIndex.toString());
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            isActive: activeIndex == index,
            drawerItemModel: drawerItems[index],
          ),
        ),
      ),
      itemCount: drawerItems.length,
    );
  }
}
