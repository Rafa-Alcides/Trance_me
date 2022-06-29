import 'package:flutter/material.dart';
import 'package:trance_me/app/theme/app_color.dart';

final ThemeData appThemeData = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    backgroundColor: AppColor.background,
  ).copyWith(
    secondary: AppColor.bgButton,
  ),
);
