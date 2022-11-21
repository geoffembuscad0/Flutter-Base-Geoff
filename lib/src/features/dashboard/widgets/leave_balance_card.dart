import 'package:flutter/material.dart';
import 'package:flutter_web_admin_template/src/core/constant/app_style_decoration.dart';
import 'package:skadi/skadi.dart';
import 'dart:developer';

import 'dashboard_card_container.dart';

TextStyle get timeoutBtnTextStyle {
  return kNormalStyle.setColor(Colors.white);
}

TextStyle get timeinBtnTextStyle {
  return kNormalStyle.setColor(Colors.blue);
}

class LeaveBalanceCard extends DashboardCardContainer {
  const LeaveBalanceCard({Key? key}) : super(key: key);

  @override
  String get title => "Monday, November 21";

  @override
  String get value => "08:53:21 AM";

  @override
  Widget contentBtn(){
    return Row(
      children: [
        TextButton(
          child: Text('Clock In', style: timeinBtnTextStyle),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
          onPressed: null
        ),
        const SpaceX(6),
        TextButton(
          child: Text('Clock Out', style: timeoutBtnTextStyle),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: null,
        )
      ],
    );
  }

  @override
  Widget footer() {
    return Container(
      color: Colors.white,
      child: Row(
      children: [
        const Icon(Icons.watch_later_outlined , color: Color.fromARGB(255, 52, 118, 228)),
        const SizedBox(width: 10),
        Text("Clock Out : ", style: kNormalStyle.black),
        Text("08:23:12 AM", style: kNormalStyle.black),
      ],
      )
    );
  }
  
  @override
  DashboardCardIcon get cardIcon => DashboardCardIcon(
        const Color.fromARGB(255, 52, 118, 228),
        const Icon(
          Icons.qr_code,
          color: Colors.white,
          size: 70
        ),
      );

  @override
  Color cardBackgroundColor() {
    return Colors.w;
  }
  // @override
  // DashboardCardTitleStylez get TextStyle => DashboardCardTitleStylez {
  // return kSubtitleStyle.bold.setColor(AppColor.white255).copyWith(
  //       letterSpacing: 1.5,
  //     );
  // }
}
