import 'package:flutter/material.dart';

import '../models/user_info_model.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';
import 'user_info_list_tile.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  final List<UserInfoModel> users = const [
    UserInfoModel(
        image: Assets.imagesAvatarOne,
        userName: 'Madrani Andi',
        gmail: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatarTwoIcon,
        userName: 'Josua Nunito',
        gmail: 'JoshNunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatarOne,
        userName: 'Madrani Andi',
        gmail: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatarTwoIcon,
        userName: 'Josua Nunito',
        gmail: 'JoshNunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatarOne,
        userName: 'Madrani Andi',
        gmail: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatarTwoIcon,
        userName: 'Josua Nunito',
        gmail: 'JoshNunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatarOne,
        userName: 'Madrani Andi',
        gmail: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatarTwoIcon,
        userName: 'Josua Nunito',
        gmail: 'JoshNunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatarOne,
        userName: 'Madrani Andi',
        gmail: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatarTwoIcon,
        userName: 'Josua Nunito',
        gmail: 'JoshNunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatarOne,
        userName: 'Madrani Andi',
        gmail: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatarTwoIcon,
        userName: 'Josua Nunito',
        gmail: 'JoshNunito@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.font16Medium.copyWith(
            color: const Color(0xFF064060),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: users
                .map((e) => IntrinsicWidth(child: UserInfoListTile(user: e)))
                .toList(),
          ),
        ),
        // SizedBox(
        //   height: 80,
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: 10,
        //     itemBuilder: (context, index) => IntrinsicWidth(
        //       child: const UserInfoListTile(
        //         image: Assets.imagesAvatarOne,
        //         subTitle: 'Madraniadi20@gmail',
        //         title: 'Madrani Andi',
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
