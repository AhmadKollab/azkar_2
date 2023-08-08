import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:azkar_2/core/resources/manager_font_weights.dart';

import '../resources/manager_colors.dart';
import '../resources/manager_fonts.dart';
import '../resources/manager_strings.dart';
import '../resources/manger_font_sizes.dart';

Text baseText({
  String? text,
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
}) {
  return Text(
    text ?? ManagerStrings.addName,
    style: TextStyle(
      fontSize: fontSize ?? ManagerFontSizes.s26,
      fontWeight: fontWeight ?? ManagerFontWeights.w600,
      fontFamily: ManagerFontFamily.appFont,
      color: color ?? ManagerColors.white,
    ),
  );
}
