import 'package:flutter/material.dart';

import 'views/dashboard_view.dart';

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat'
      ),
      debugShowCheckedModeBanner: false,
      home: const DashboardView(),
    );
  }
}
