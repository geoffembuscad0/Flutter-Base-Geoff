import 'dart:math';

import 'package:flutter/material.dart';
import 'package:skadi/skadi.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'widgets/timein_card.dart';
import 'widgets/leave_balance_card.dart';
// import 'widgets/total_customer_card.dart';
// import 'widgets/budget_card.dart';
// import 'widgets/task_progress_card.dart';
// import 'widgets/total_profit.dart';
// import 'widgets/weekly_sales_chart.dart';
import 'widgets/timein_container.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int current = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCardSummary(),
          SpaceY(30),
          // _timeInContainer(context)
          // if (!kIsWeb) //Web doesn't support chart yet
            // const WeeklySaleChart()
          
        ],
      ),
    );
  }

  Widget _buildCardSummary() {
    return LayoutBuilder(
      builder: (context, constraint) {
        double maxWidth = constraint.maxWidth;
        int count = (maxWidth ~/ 335);

        /*
        Navigator.of(context).push(
          DialogRoute(
            builder: (_) => const Material(
              color: Colors.black45,
              child: TimeInContainer(),
        )))
        */
        return StaggeredGrid.count(
          mainAxisSpacing: 24,
          crossAxisSpacing: 24,
          crossAxisCount: max(count, 1),
          children: [
            TimeinCard(),
            LeaveBalanceCard(),
          ]
        );
      },
    );
  }

  timeInContainer( context ){
    //  Navigator.of(context).push(
    //   DialogRoute(
    //     builder: (_) => const Material(
    //       color: Colors.black45,
    //       child: TimeInContainer(),
    //   )
    // ));
  }

  callback() {
    setState(() {});
  }

  sayHello(){
    print("Hello there");
  }
}
