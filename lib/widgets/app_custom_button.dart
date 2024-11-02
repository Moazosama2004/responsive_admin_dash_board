import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';

class AppCustomButton extends StatelessWidget {
  const AppCustomButton(
      {super.key, required this.text, this.textColor, this.backgroundColor});

  final String text;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 54,
          vertical: 20,
        ),
        child: Text(
          text,
          style: AppStyles.font18SemiBold.copyWith(
            color: textColor ?? Color(0xFF4EB7F2),
          ),
        ),
      ),
    );
  }
}
