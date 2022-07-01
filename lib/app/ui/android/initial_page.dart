import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trance_me/app/ui/android/login_page.dart';
import 'package:trance_me/app/ui/theme/app_colors.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFieldCpf,
      body: Center(
        child: Image.asset("assets/logoo.png"),
      ),
    );
  }
}
