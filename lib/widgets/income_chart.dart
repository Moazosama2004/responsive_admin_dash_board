import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
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
          showTitle: false,
          radius: selectedIndex == 0 ? 60 : 50,
          value: 22,
        ),
        PieChartSectionData(
          color: Color(0xFF4DB7F2),
          value: 25,
          showTitle: false,
          radius: selectedIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          color: Color(0xFF208BC7),
          showTitle: false,
          radius: selectedIndex == 2 ? 60 : 50,
          value: 40,
        ),
        PieChartSectionData(
          color: Color(0xFF064060),
          value: 20,
          showTitle: false,
          radius: selectedIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
