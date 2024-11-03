import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_admin_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_admin_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_admin_dash_board/widgets/dashboard_mobile_layout.dart';

import 'dashboard_tablet_layout.dart';

class DashboardViewBody extends StatefulWidget {
  const DashboardViewBody({super.key});

  @override
  State<DashboardViewBody> createState() => _DashboardViewBodyState();
}

class _DashboardViewBodyState extends State<DashboardViewBody> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                  setState(() {});
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              backgroundColor: const Color(0xFF4db7f2),
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
