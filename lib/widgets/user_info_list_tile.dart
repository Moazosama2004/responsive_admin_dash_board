import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dash_board/utils/app_images.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        title: Text(
          title,
          style: AppStyles.font16SemiBold,
        ),
        subtitle: Text(
          subTitle,
          style: AppStyles.font12Regular,
        ),
        leading: SvgPicture.asset(image),
      ),
    );
  }
}
