import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class RangeTimes extends StatelessWidget {
  const RangeTimes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: AppStyles.font16Medium,
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -1.5708,
            child: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Color(0xFF064060),
            ),
          ),
        ],
      ),
    );
  }
}