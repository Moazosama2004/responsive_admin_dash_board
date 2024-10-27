import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_admin_dash_board/widgets/dashboard_desktop_layout.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
