import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_admin_template/src/core/constant/app_style_decoration.dart';
import 'package:flutter_web_admin_template/src/features/dashboard/widgets/dashboard_card_container.dart';
import 'package:skadi/skadi.dart';

import '../../../core/constant/app_style_decoration.dart';

class TimeInContainer extends StatelessWidget {
  const TimeInContainer({Key? key}) : super(key: key);

/*
Navigator.of(context).push(
  DialogRoute(
    builder: (_) => const Material(
      color: Colors.black45,
      child: Container(),
    )))

*/

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        String dateTime = "Monday, 08:53:21 AM";
        String dateNameStr = "January 01, 2021";
        double width = constraint.maxWidth >= 800 ? constraint.maxWidth / 2 : constraint.maxWidth;

        return Container(
          margin: const EdgeInsets.all(0),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: SkadiDecoration.radius(22),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 16,
                spreadRadius: 2,
              )
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 16, top: 16),
                          alignment: Alignment.topLeft,
                          child: Text(dateTime, style: kSubtitleStyleBold.setColor(Color.fromARGB(255, 54, 56, 65)), textAlign: TextAlign.left,)
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 16, top: 6),
                          alignment: Alignment.topLeft,
                          child: Text(dateNameStr, style: kCaptionStyleBold.setColor(Color.fromARGB(255, 54, 56, 65)), textAlign: TextAlign.left,)
                        ),
                      ],
                    )
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        child: SkadiIconButton(
                          margin: const EdgeInsets.only(top: 4, right: 8),
                          // backgroundColor: const Color.fromARGB(255, 52, 118, 228),
                          borderRadius: 30,
                          icon: const Icon(
                            Icons.camera_alt_rounded,
                            color: Color.fromARGB(255, 54, 56, 65),
                            size: 30
                          ),
                          onTap: () {
                            print("Camera icon is onTap");
                          }
                        )
                      )
                    )
                  )
                ]
              ),
              Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Container(
                      height: 175,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const  BoxDecoration(
                        color: Color(0xff7c94b6),
                        image: DecorationImage(
                          // https://storage.googleapis.com/support-forums-api/attachment/message-13880783-13973448302980896503.png
                          image: NetworkImage('https://i.ytimg.com/vi/hAsZCTL__lo/maxresdefault.jpg'),
                          fit: BoxFit.cover,
                        )
                      ),
                    )
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Container(
                      height: 200,
                      decoration: const  BoxDecoration(
                        color: Color(0xff7c94b6),
                        image: DecorationImage(
                          // https://storage.googleapis.com/support-forums-api/attachment/message-13880783-13973448302980896503.png
                          image: NetworkImage('https://storage.googleapis.com/support-forums-api/attachment/message-13880783-13973448302980896503.png'),
                          fit: BoxFit.cover,
                        )
                      ),
                    )
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Container(
                      padding: const EdgeInsets.only(left: 22, top: 14, right: 22, bottom: 20),
                      margin: EdgeInsets.zero,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.fromHeight(48) // put the width and height you want
                              ),
                              child: const Text('Clock In'),
                              onPressed: () {
                                print("Clock In ElevatedButton is onPressed");
                              },
                            )
                          )
                        ],
                      )
                    )
                  )
                ]
              )
            ]
          )
        );
      }
    );
  }
}
// Best Feeder
class _Drink {
  final Color color;
  final String name;
  final double percent;

  _Drink(this.color, this.name, this.percent);
}

final _drinkList = [
  _Drink(Colors.red, "Sting", 25.0),
  _Drink(Colors.black, "Coca", 36.6),
  _Drink(Colors.blue, "Vigor", 36.4),
  _Drink(Colors.orangeAccent, "Fanta", 14),
];

