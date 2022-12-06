import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:skadi/skadi.dart';

// import 'widgets/timein_card.dart';
// import 'widgets/leave_balance_card.dart';
// import 'widgets/total_customer_card.dart';
// import 'widgets/budget_card.dart';
// import 'widgets/task_progress_card.dart';
// import 'widgets/total_profit.dart';
// import 'widgets/weekly_sales_chart.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class LeavePage extends StatefulWidget {
  const LeavePage({Key? key}) : super(key: key);

  @override
  State<LeavePage> createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage> {
  int current = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCardSummary(),
          const SpaceY(30),
          // if (!kIsWeb) //Web doesn't support chart yet
          //   const WeeklySaleChart(),
        ],
      ),
    );
  }

  Widget _buildCardSummary() {
    return LayoutBuilder(
      builder: (context, constraint) {
        double maxWidth = constraint.maxWidth;
        int count = (maxWidth ~/ 335);

        return StaggeredGrid.count(
          mainAxisSpacing: 24,
          crossAxisSpacing: 24,
          crossAxisCount: max(count, 1),
          children: const [
            // FiledLeaves(),
          ]
        );
      },
    );
  }
}
