import 'package:flutter/material.dart';
import 'package:flutter_web_admin_template/src/core/constant/app_style_decoration.dart';
import 'package:skadi/skadi.dart';

class CompanyAuthLogo extends StatelessWidget {
  const CompanyAuthLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // Text( "Hello", style: kBigHeaderStyle), // style decoration
        Text(
          "Enter your",
          style: aSubHeaderStyle,
        ),
        Text(
          "company code",
          style: abSubHeaderStyle,
        ),
      ],
    );
  }
}

class NotesCard extends StatelessWidget {
  const NotesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // Text( "Hello", style: kBigHeaderStyle), // style decoration
        Text(
          "To sign with a company code",
          style: labelCompanyAuthNotesHead
        ),
        SpaceY(10),
        Text(
          "• Use an authorized account",
          style: labelCompanyAuthNotesBody,
        ),
        SpaceY(10),
        Text(
          "• Use a company code, 6-7 characters, and no spaces or symbols",
          style: labelCompanyAuthNotesBody,
        ),
        SpaceY(10),
        Text(
          "If you are having trouble joining the class, go to the Help Center article.",
          style: labelCompanyAuthNotesBody,
        ),
        SpaceY(30)
      ],
    );
  }
}
