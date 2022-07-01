import 'package:flutter/material.dart';
import 'package:trance_me/app/ui/theme/app_colors.dart';

final ThemeData appThemeData = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    backgroundColor: AppColor.background,
  ).copyWith(
    secondary: AppColor.bgButton,
  ),
);
