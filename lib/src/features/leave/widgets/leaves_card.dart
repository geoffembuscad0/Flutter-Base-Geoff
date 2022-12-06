import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_web_admin_template/src/core/constant/app_style_decoration.dart';
import 'package:skadi/skadi.dart';
import 'dart:developer';


TextStyle get timeoutBtnTextStyle {
  return kNormalStyle.setColor(Colors.white);
}

TextStyle get timeinBtnTextStyle {
  return kNormalStyle.setColor(const Color.fromARGB(255, 52, 118, 228));
}

TextStyle get seeMoreBtnTextStyle {
  return kCaptionStyle.setColor(Colors.grey);
}

Color get primaryBlueNavy{
  return const Color.fromARGB(255, 52, 118, 228);
}

class TimeinCard extends DashboardCardContainer {
  const TimeinCard({Key? key}) : super(key: key);

  @override
  String get cardHeaderText => "My Timeclock";

  @override
  double get cardHeight => 176;

  @override
  Widget subHeader(){
    /*
    Date & Time and icon on grid.
    */
    String strDateVal = "monday, November 21";
    String strTimeVal = "08:53:21 AM";

    return Container(
      margin: const EdgeInsets.fromLTRB(10, 4, 0, 0),
      child: Row(children: [
        Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(strDateVal.capitalize, style: dashboardCardSubTitleStyle.setSize(15)),
              Text(strTimeVal, style: dashboardCardValueStyle.setSize(26))
            ],
          )
        ),
        Expanded(
          flex: 2,
          child: Align(
          alignment: Alignment.topRight,
          child: SizedBox(
            child: SkadiIconButton(
              // backgroundColor: const Color.fromARGB(255, 52, 118, 228),
              // borderRadius: 32,
              icon: const Icon(
                Icons.qr_code,
                color: Colors.white,
                size: 50
              ),
              onTap: () {}
            )
          )
        )),
      ],)
    );
    /*
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
      child: Text(
        strDateVal.capitalize,
        style: dashboardCardSubTitleStyle.setSize(15)
      )
    );
    */
  }

  @override
  Widget mainHeader(){
    return Container();
    /*
    String value = "08:53:21 AM";
    return
    
    Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Text(
        value.toUpperCase(),
        style: dashboardCardValueStyle.setSize(26)
      )
    );
    */
  }

  @override
  Widget contentBtn(){
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 2, 0, 0),
      constraints: const BoxConstraints(maxWidth: 300),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.zero,
            width: 100,
            child: TextButton(
              child: Text('Clock In', style: timeinBtnTextStyle),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.white,
                    width: 1,
                    style: BorderStyle.solid
                  ),
                  borderRadius: BorderRadius.circular(8)
                ))
              ),
              onPressed: null
            )
          ),
          const SpaceX(6),
          Container(
            margin: EdgeInsets.zero,
            width: 100,
            child: TextButton(
              child: Text('Clock Out', style: timeoutBtnTextStyle),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 52, 118, 228)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(side: const BorderSide(
                  color: Colors.white,
                  width: 1,
                  style: BorderStyle.solid
                ), borderRadius: BorderRadius.circular(8)))
              ),
              onPressed: null,
            )
          )
        ]
      ),
    );
  }

  @override
  Widget footer() {
    // constraints: const BoxConstraints(maxWidth: 300),
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          )
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Icon(Icons.watch_later_outlined , color: primaryBlueNavy)
            ),
            Expanded(
              flex: 7,
              child: Text("Clock Out : 08:23:12 AM", style: kCaptionStyle.setColor(Colors.grey))
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.center,
                child: Text("See More", style: seeMoreBtnTextStyle)
              )
            )
          ]   
        )
    );
  }

  @override
  Color cardBackgroundColor() {
    return const Color.fromARGB(255, 52, 118, 228); //#EA1D3F
  }

  // @override
  // Widget rightIcon(){
  //     return SizedBox(
  //       height: 60,
  //       width: 60,
  //       child: SkadiIconButton(
  //         onTap: () {},
  //         backgroundColor: const Color.fromARGB(255, 52, 118, 228),
  //         borderRadius: 32,
  //         icon: const Icon(
  //           Icons.qr_code,
  //           color: Colors.white,
  //           size: 70
  //         )
  //       )
  //   );
  // }
}
