import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/utils/size_config.dart';
import 'package:responsive_admin_dash_board/widgets/detailed_income_chart.dart';

import 'income_chart.dart';
import 'income_details.dart';

class IncomeChartBody extends StatelessWidget {
  const IncomeChartBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SizeConfig.tablet <= width && width < 2250
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
