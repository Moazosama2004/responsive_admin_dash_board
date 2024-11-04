import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          selectedIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          color: Color(0xFFE2DECD),
          radius: selectedIndex == 0 ? 60 : 50,
          title: selectedIndex == 0 ? 'Design service' : '22%',
          titlePositionPercentageOffset: selectedIndex == 0 ? 1.8 : null,
          titleStyle: selectedIndex == 0
              ? AppStyles.font16Medium.copyWith()
              : AppStyles.font16Medium.copyWith(color: Colors.white),
          value: 22,
        ),
        PieChartSectionData(
          color: Color(0xFF4DB7F2),
          value: 25,
          title: selectedIndex == 1 ? 'Design product' : '25%',
          titlePositionPercentageOffset: selectedIndex == 1 ? 1.5 : null,
          titleStyle: selectedIndex == 1
              ? AppStyles.font16Medium.copyWith()
              : AppStyles.font16Medium.copyWith(color: Colors.white),
          radius: selectedIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          color: Color(0xFF208BC7),
          title: selectedIndex == 2 ? 'Product royalti' : '40%',
          titlePositionPercentageOffset: selectedIndex == 2 ? 1.7 : null,
          titleStyle: selectedIndex == 2
              ? AppStyles.font16Medium.copyWith()
              : AppStyles.font16Medium.copyWith(color: Colors.white),
          radius: selectedIndex == 2 ? 60 : 50,
          value: 40,
        ),
        PieChartSectionData(
          color: Color(0xFF064060),
          title: selectedIndex == 3 ? 'Other' : '20%',
          titlePositionPercentageOffset: selectedIndex == 3 ? 1.6 : null,
          titleStyle: selectedIndex == 3
              ? AppStyles.font16Medium.copyWith()
              : AppStyles.font16Medium.copyWith(color: Colors.white),
          value: 20,
          radius: selectedIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
