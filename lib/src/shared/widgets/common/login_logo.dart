import 'package:flutter/material.dart';
import 'package:flutter_web_admin_template/src/core/constant/app_style_decoration.dart';
import 'package:skadi/skadi.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // Text( "Hello", style: kBigHeaderStyle), // style decoration
        Text("Sign in to",
          style: kBigHeaderStyle,
          // style: TextStyle(
          //   fontFamily: 'RobotoMono'
          // )
        ),
        Text("Empleyado",
          style: cogSubHeaderStyle,
          // style: TextStyle(
          //   fontFamily: 'RobotoMono'
          // )
        ),
      ],
    );
  }
}
