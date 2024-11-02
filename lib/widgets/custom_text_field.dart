import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        contentPadding: const EdgeInsets.all(20),
        enabledBorder: buildBorder(),
        border: buildBorder(),
        focusedBorder: buildBorder(),
        hintText: 'Type customer email',
        hintStyle: AppStyles.font16Regular.copyWith(
          color: const Color(0xFFAAAAAA),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.transparent));
  }
}
