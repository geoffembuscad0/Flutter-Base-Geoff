import 'package:flutter/material.dart';
import 'package:flutter_web_admin_template/src/core/constant/app_style_decoration.dart';
import 'package:skadi/skadi.dart';
import 'dart:developer';

import 'dashboard_card_container.dart';

TextStyle get grayBtnTextStyle {
  return kNormalStyle.setColor(const Color.fromARGB(255, 54, 56, 65));
}

TextStyle get labelDayType {
  return kNormalThickStyle.setColor(const Color.fromARGB(255, 136, 136, 181));
}

TextStyle get labelLeaveStatus {
  return kSubtitleStyle.setColor(const Color.fromARGB(255, 243, 174, 77));
}

TextStyle get usedBalancedCardSubTitleStyle {
  return dashboardCardValueStyle
      .setColor(const Color.fromARGB(255, 54, 56, 65))
      .setSize(24);
}

TextStyle get leavesSubTitleStyle {
  return kSubtitleBoldStyle.setColor(const Color.fromARGB(
      255, 243, 174, 77)); //.copyWith( letterSpacing: 0.3 );
}

TextStyle get headerSubTitle {
  return dashboardCardValueStyle
      .setColor(const Color.fromARGB(255, 108, 72, 255))
      .setSize(24); //.copyWith( letterSpacing: 0.3, );
}

TextStyle get titleLeaveType {
  return btnLabel.setColor(const Color.fromARGB(255, 54, 56, 65));
}

Color get bgColorLeaveStatusTypeApproved {
  return const Color.fromARGB(255, 182, 245, 210);
}

Color get bgColorLeaveStatusTypeDeclined {
  return const Color.fromARGB(255, 255, 239, 236);
}

TextStyle get labelLeaveStatusTypeDeclined {
  return kTitleStyle
      .setColor(const Color.fromARGB(255, 243, 174, 77))
      .setSize(11.5);
}

TextStyle get labelLeaveStatusTypeApproved {
  return kTitleStyle
      .setColor(const Color.fromARGB(255, 74, 154, 97))
      .setSize(11.5);
}

TextStyle get btnTextFileALeave {
  return kNormalThickStyle.setColor(Colors.white);
}

TextStyle get btnTextLeaveMore {
  return kNormalThickStyle.setColor(const Color.fromARGB(255, 52, 118, 228));
}

Color get colorWhite {
  return Colors.white; // fromARGB(255, 52, 118, 228);
}

TextStyle get labelSeeMore {
  return kNormalStyle.setColor(const Color.fromARGB(255, 142, 148, 178));
}

TextStyle get btnFileALeaveTxt {
  return kNormalStyle.setColor(const Color.fromARGB(255, 255, 255, 255));
}

// 363841 rgb(255,54,56,65)

class LeaveBalanceCard extends DashboardCardContainer {
  // final navigatorKey = GlobalKey<NavigatorState>();
  const LeaveBalanceCard({Key? key}) : super(key: key);

  @override
  String get cardHeaderText => "My Balances";

  @override
  double get cardHeight => 300;

  @override
  Widget mainHeader() {
    String value = "";
    return Container(
        margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
        child: Text(value, style: usedBalancedCardSubTitleStyle));
  }

  @override
  Widget subHeader() {
    String title = "Leave Balances";
    int balances = 100;
    String parsedBalances = balances.toString();

    return Container(
        margin: const EdgeInsets.fromLTRB(12, 10, 12, 0),
        child: Row(
          children: [
            Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: usedBalancedCardSubTitleStyle),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(parsedBalances,
                            style: usedBalancedCardSubTitleStyle)
                      ],
                    )))),
          ],
        ));
  }

  @override
  Widget contentBtn() {
    String labelCarryOver = "carry over";
    String labelEarnings = "earnings";
    String labelUsed = "used";
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(child: Text("Vacation Leave"), value: "Vacation Leave"),
      DropdownMenuItem(child: Text("Sick Leave"), value: "Sick Leave"),
      DropdownMenuItem(
          child: Text("Maternity Leave"), value: "Maternity Leave"),
      DropdownMenuItem(
          child: Text("Leave without Pay"), value: "Leave without Pay"),
    ];

    return Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 12),
        child: Column(children: [
          SizedBox(
            width: double.infinity,
            child: DropdownButton(
                isExpanded: true,
                items: menuItems,
                hint: Text("Select Leave"),
                // value: _selectedItem4,
                onChanged: null),
          ),
          SpaceY(12),
          Container(
              margin: EdgeInsets.all(1),
              child: Row(children: <Widget>[
                Expanded(
                    flex: 9,
                    child: Container(
                        height: 1,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.5,
                                    color:
                                        Color.fromARGB(255, 122, 130, 148)))),
                        padding: const EdgeInsets.only(bottom: 6),
                        // color: Colors.black
                        child: Column()))
              ])),
          SpaceY(12),
          Container(
              margin: EdgeInsets.all(1),
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 3,
                      child: Container(
                          height: 60,
                          padding: const EdgeInsets.only(top: 6),
                          // color: Colors.black
                          child: Column(children: [
                            Text(labelCarryOver.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 54, 56, 65),
                                    letterSpacing: 1.4)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("100",
                                    style: usedBalancedCardSubTitleStyle))
                          ]))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          height: 60,
                          padding: const EdgeInsets.only(top: 6),
                          decoration: const BoxDecoration(
                              border: Border(
                            left: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 122, 130, 148)),
                            right: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 122, 130, 148)),
                          )),
                          // color: Colors.black
                          child: Column(children: [
                            Text(labelEarnings.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 54, 56, 65),
                                    letterSpacing: 1.4)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("100",
                                    style: usedBalancedCardSubTitleStyle))
                          ]))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          height: 60,
                          padding: const EdgeInsets.only(top: 6),
                          // color: Colors.black
                          child: Column(children: [
                            Text(labelUsed.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 54, 56, 65),
                                    letterSpacing: 1.4)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("100",
                                    style: usedBalancedCardSubTitleStyle))
                          ]))),
                ],
              )),
          SpaceY(24)
        ]));
  }

  @override
  Widget footer() {
    return Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 12),
        child: Column(children: [
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text('File A Leave'),
                onPressed: () {},
              )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('More', style: btnTextLeaveMore),
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                        width: 1, color: Color.fromARGB(255, 52, 118, 228)),
                    backgroundColor: Colors.white),
                // style: ,
                onPressed: () {},
              )),
        ]));

    /*
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        padding: const EdgeInsets.all(9),
        decoration: const BoxDecoration(
          color: Colors.white,
          // border: ,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          )
        ),
        child: Align(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Status", style: headerSubTitle),

              Row(
                // Attendance Boxes
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color.fromARGB(255, 108,72,255))
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded( flex: 6, child: Text("Whole Day", style: labelDayType)),
                              Expanded( flex: 4, child: Align(alignment: Alignment.centerRight,
                                child: Chip(
                                  backgroundColor: bgColorLeaveStatusTypeApproved,
                                  label: Text('Approved', style: labelLeaveStatusTypeApproved),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                      topLeft: Radius.circular(8),
                                    )
                                  )
                                )
                              )),
                            ]
                          ),
                          Row(
                            children: [
                              Expanded( flex: 10, child: Text("Vacation Leave", style: titleLeaveType))
                            ]
                          ),
                          Row(
                            children: [
                              Expanded( flex: 11, child: Text("May 13, 2022", style: labelDayType)),
                              Expanded( flex: 2,
                                child: TextButton.icon(
                                  style: TextButton.styleFrom(
                                    textStyle: TextStyle(color: Colors.black54),
                                    backgroundColor: Color.fromARGB(255, 243, 243, 243),
                                    shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ), 
                                  ),
                                  onPressed: () => {},
                                  icon: const Icon(Icons.arrow_forward_ios_rounded, color: Color.fromARGB(255,160,160,164)),
                                  label: const Text(''),
                                )
                              )
                            ]
                          )
                        ]
                      )
                    )
                  )
                ]
              ),

              Row(
                // Attendance Boxes
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color.fromARGB(255, 108,72,255))
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded( flex: 6, child: Text("Whole Day", style: labelDayType)),
                              Expanded( flex: 4, child: Align(alignment: Alignment.centerRight,
                                child: Chip(
                                  backgroundColor: bgColorLeaveStatusTypeDeclined,
                                  label: Text('Declined', style: labelLeaveStatusTypeDeclined),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                      topLeft: Radius.circular(8),
                                    )
                                  )
                                )
                              )),
                            ]
                          ),
                          Row(
                            children: [
                              Expanded( flex: 10, child: Text("Sick Leave", style: titleLeaveType))
                            ]
                          ),
                          Row(
                            children: [
                              Expanded( flex: 11, child: Text("May 13, 2022", style: labelDayType)),
                              Expanded( flex: 2,
                                child: TextButton.icon(
                                  style: TextButton.styleFrom(
                                    textStyle: TextStyle(color: Colors.black54),
                                    backgroundColor: Color.fromARGB(255, 243, 243, 243),
                                    shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ), 
                                  ),
                                  onPressed: () => {},
                                  icon: const Icon(Icons.arrow_forward_ios_rounded, color: Color.fromARGB(255,160,160,164)),
                                  label: const Text(''),
                                )
                              )
                            ]
                          )
                        ]
                      )
                    )
                  )
                ]
              ),

              Row(
                // Attendance Boxes
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color.fromARGB(255, 108,72,255))
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded( flex: 6, child: Text("Whole Day", style: labelDayType)),
                              Expanded( flex: 4, child: Align(alignment: Alignment.centerRight,
                                child: Chip(
                                  backgroundColor: bgColorLeaveStatusTypeDeclined,
                                  label: Text('Declined', style: labelLeaveStatusTypeDeclined),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                      topLeft: Radius.circular(8),
                                    )
                                  )
                                )
                              )),
                            ]
                          ),
                          Row(
                            children: [
                              Expanded( flex: 10, child: Text("Maternity Leave", style: titleLeaveType))
                            ]
                          ),
                          Row(
                            children: [
                              Expanded( flex: 11, child: Text("May 13, 2022", style: labelDayType)),
                              Expanded( flex: 2,
                                child: TextButton.icon(
                                  style: TextButton.styleFrom(
                                    textStyle: TextStyle(color: Colors.black54),
                                    backgroundColor: Color.fromARGB(255, 243, 243, 243),
                                    shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ), 
                                  ),
                                  onPressed: () => {},
                                  icon: const Icon(Icons.arrow_forward_ios_rounded, color: Color.fromARGB(255,160,160,164)),
                                  label: const Text(''),
                                )
                              )
                            ]
                          )
                        ]
                      )
                    )
                  )
                ]
              ),

              Row(children: [
                Expanded(
                  flex: 3,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextButton.icon(
                      label: Text('See More', style: labelSeeMore),
                      icon: const Icon(Icons.arrow_circle_right_rounded, color: Color.fromARGB(255, 129, 95, 243)),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 255, 255, 255)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(side: const BorderSide(
                          color: Colors.white,
                          width: 1,
                          style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(8)))
                      ),
                      
                      onPressed: null,
                    )
                  )
                ),
                Expanded(
                  flex: 2,
                  child: Container()
                ),
                Expanded(
                  flex: 3,
                  child: Container()
                )
              ])
            ]
          ),
        )
    ); */
  }

  @override
  Color cardBackgroundColor() {
    return const Color.fromARGB(255, 248, 244, 244);
    // rgb(108,72,255)
    // return Color.fromARGB(255, 219, 70, 70);
    // return Colors.black38;
  }

  void showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
