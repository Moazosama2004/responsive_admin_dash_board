import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});

  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Customer Email',
          style:
              AppStyles.font16Medium.copyWith(color: const Color(0xFF064060)),
        ),
        const SizedBox(
          height: 12,
        ),
        const CustomTextField(),
      ],
    );
  }
}
