import 'package:flutter/material.dart';
import 'package:trance_me/src/auth/components/theme.dart';
import 'package:trance_me/src/auth/sing_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: TranceMeTheme.light,
      home: const SingInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

