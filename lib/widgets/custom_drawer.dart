import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/models/drawer_item_model.dart';
import 'package:responsive_admin_dash_board/utils/app_images.dart';
import 'package:responsive_admin_dash_board/widgets/drawer_item.dart';

import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> drawerItems = [
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
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesMainAvatar,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
          SizedBox(
            height: 8,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                drawerItemModel: drawerItems[index],
              ),
            ),
            itemCount: drawerItems.length,
          ),
        ],
      ),
    );
  }
}
