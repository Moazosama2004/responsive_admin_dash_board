import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/models/drawer_item_model.dart';
import 'package:responsive_admin_dash_board/models/user_info_model.dart';
import 'package:responsive_admin_dash_board/utils/app_images.dart';
import 'package:responsive_admin_dash_board/widgets/inactive_and_active_drawer_item.dart';

import 'drawer_items_list_view.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.5,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              user: UserInfoModel(
                  image: Assets.imagesMainAvatar,
                  userName: 'Lekan Okeowo',
                  gmail: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSettingIcon,
                        title: 'Setting System')),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogoutIcon, title: 'Log out')),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
