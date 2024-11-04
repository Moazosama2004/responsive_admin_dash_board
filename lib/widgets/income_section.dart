import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_admin_dash_board/widgets/income_details.dart';

import 'income_chart.dart';
import 'income_chart_body.dart';
import 'income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    // log(MediaQuery.sizeOf(context).width.toString());
    return const CustomBackGroundContainer(
      color: Colors.white,
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(
            height: 16,
          ),
          IncomeChartBody(),
        ],
      ),
    );
  }
}
