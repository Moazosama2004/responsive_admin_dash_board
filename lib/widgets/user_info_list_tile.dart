import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dash_board/models/user_info_model.dart';
import 'package:responsive_admin_dash_board/utils/app_images.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.user,
  });

  final UserInfoModel user;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        title: Text(
          user.userName,
          style: AppStyles.font16SemiBold,
        ),
        subtitle: Text(
          user.gmail,
          style: AppStyles.font12Regular,
        ),
        leading: SvgPicture.asset(user.image),
      ),
    );
  }
}
