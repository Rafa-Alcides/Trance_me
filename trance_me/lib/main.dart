import 'package:flutter/material.dart';
import 'package:trance_me/src/pages/auth/sign_in_screen.dart';
import 'package:trance_me/src/config/custom_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: CustomColors.customSwatchColor,
        scaffoldBackgroundColor: CustomColors.customBackground,
      ),
      home: const SingInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
