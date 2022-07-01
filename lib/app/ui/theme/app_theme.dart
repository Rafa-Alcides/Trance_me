import 'package:flutter/material.dart';
import 'package:trance_me/app/ui/theme/app_colors.dart';

final ThemeData appThemeData = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: TextButton.styleFrom(
        backgroundColor: AppColor.bgButton,
        padding: const EdgeInsets.symmetric(vertical: 30)),
  ),
);
