import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:skadi/skadi.dart';

import '../../../core/constant/app_style_decoration.dart';
import '../../../core/constant/app_theme_color.dart';

TextStyle get dashboardCardTitleStyle {
  return kSubHeaderStyle.bold.setColor(AppColor.white255).copyWith(
    letterSpacing: 1.5,
  );
}

TextStyle get dashboardCardSubTitleStyle {
  return kSubtitleStyle.setColor(AppColor.white155).copyWith(
    letterSpacing: 0.3,
  );
}

TextStyle get dashboardCardValueStyle {
  return kBigHeaderStyle.bold.setColor(AppColor.white255).copyWith(
    letterSpacing: 1.5,
  );
}

abstract class DashboardCardContainer extends StatelessWidget {
  const DashboardCardContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Text(cardHeaderText, style: kSubHeaderStyle)
          )
        ),
        // SpaceY(3.0),
        Container(
          // height: cardHeight,
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: cardBackgroundColor(),
            borderRadius: SkadiDecoration.radius(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 16,
                spreadRadius: 2,
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.zero,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeader(),
                      mainHeader(),
                      contentBtn(),
                      footer(),
                    ],
                  ),
                ),
                // rightIcon()
              ],
            ),
          )
        )
      ],)
    );
  }

  String get cardHeaderText;
  double get cardHeight;
  Widget subHeader();
  Widget mainHeader();
  Widget contentBtn();
  Widget footer();
  Color cardBackgroundColor();
}

class DashboardCardIcon {
  final Color color;
  final Widget icon;

  DashboardCardIcon(this.color, this.icon);
}
