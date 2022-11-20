import 'package:flutter/material.dart';
import 'package:flutter_web_admin_template/src/features/dashboard/widgets/dashboard_card_container.dart';
import 'package:skadi/skadi.dart';

import '../../../core/constant/app_style_decoration.dart';

class TotalCustomerCard extends DashboardCardContainer {
  const TotalCustomerCard({Key? key}) : super(key: key);

  @override
  String get title => "total hired employees";

  @override
  String get value => "86";

  @override
  Widget footer() {
    return Row(
      children: [
        const Icon(Icons.arrow_upward, color: Colors.green),
        Text("12% ", style: kNormalStyle.green),
        Text("Since last month", style: kNormalStyle.grey),
      ],
    );
  }

  @override
  DashboardCardIcon get cardIcon => DashboardCardIcon(
        Colors.green,
        const Icon(
          Icons.people,
          color: Colors.white,
        ),
      );
}
