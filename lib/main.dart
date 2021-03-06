import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trance_me/app/routes/app_pages.dart';
import 'package:trance_me/app/routes/app_routes.dart';
import 'package:trance_me/app/ui/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    title: "Trance_Me",
    debugShowCheckedModeBanner: false,
    getPages: AppPages.routes,
    initialRoute: Routes.INITIAL,
    theme: appThemeData,
  ));
}
