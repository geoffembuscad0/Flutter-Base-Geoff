import 'package:flutter/material.dart';

import 'app_theme_color.dart';

const TextStyle kBigHeaderStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.bold,
);

const TextStyle kHeaderStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
const TextStyle cogHeaderStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: AppColor.primary
);
const TextStyle kSubHeaderStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
);
const TextStyle aSubHeaderStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w600
);
const TextStyle abSubHeaderStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w600
);
const btnLabel = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold
);
const labelCompanyAuthNotesHead = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(221, 144, 144, 144)
);
const labelCompanyAuthNotesBody = TextStyle(
  fontSize: 16,
  color: Color.fromARGB(221, 144, 144, 144)
);
const TextStyle cogSubHeaderStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w600,
  color: AppColor.primary
);
const TextStyle kTitleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
const TextStyle kSubtitleStyleLight = TextStyle(
  fontSize: 16,
);
const TextStyle kSubtitleStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);
const TextStyle kSubtitleStyleBold = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
);
const TextStyle kSubtitleBoldStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
);
const TextStyle kNormalStyle = TextStyle(
  fontSize: 14,
);
// const kSubtitleStyle = TextStyle(
//   fontSize: 1,
//   fontStyle: FontStyle.
// );
const TextStyle kNormalThickStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400
);
const TextStyle kCaptionStyle = TextStyle(
  fontSize: 12,
);
const TextStyle kCaptionStyleBold = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600
);
const TextStyle kOverLineStyle = TextStyle(
  fontSize: 10,
);

extension StyleExtension on TextStyle {
  TextStyle get primary => copyWith(color: AppColor.primary);
  // TextStyle get accent => copyWith(color: AppColor.accent);
}
