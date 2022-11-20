import 'package:flutter/material.dart';

import 'app_theme_color.dart';

const TextStyle kBigHeaderStyle = TextStyle(
  fontSize: 28,
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
const TextStyle cogSubHeaderStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: AppColor.primary
);
const TextStyle kTitleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
const TextStyle kSubtitleStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
const TextStyle kNormalStyle = TextStyle(
  fontSize: 14,
);
const TextStyle kCaptionStyle = TextStyle(
  fontSize: 12,
);
const TextStyle kOverLineStyle = TextStyle(
  fontSize: 10,
);

extension StyleExtension on TextStyle {
  TextStyle get primary => copyWith(color: AppColor.primary);
  // TextStyle get accent => copyWith(color: AppColor.accent);
}
