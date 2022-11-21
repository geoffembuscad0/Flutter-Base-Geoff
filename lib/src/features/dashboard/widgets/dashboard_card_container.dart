import 'package:flutter/material.dart';
import 'package:skadi/skadi.dart';

import '../../../core/constant/app_style_decoration.dart';
import '../../../core/constant/app_theme_color.dart';

TextStyle get dashboardCardTitleStyle {
  return kSubtitleStyle.bold.setColor(AppColor.white255).copyWith(
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
    return Container(
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: cardBackgroundColor(),
        borderRadius: SkadiDecoration.radius(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 2,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.toUpperCase(),
                    style: dashboardCardSubTitleStyle,
                  ),
                  Text(value, style: dashboardCardValueStyle),
                  contentBtn(),
                  const SpaceY(6),
                  footer(),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              width: 60,
              child: SkadiIconButton(
                onTap: () {},
                backgroundColor: cardIcon.color,
                borderRadius: 32,
                icon: cardIcon.icon
              )
            )
          ],
        ),
      ),
    );
  }

  String get title;
  String get value;
  Widget contentBtn();
  Widget footer();
  Color cardBackgroundColor();
  DashboardCardIcon get cardIcon;
}

class DashboardCardIcon {
  final Color color;
  final Widget icon;

  DashboardCardIcon(this.color, this.icon);
}
