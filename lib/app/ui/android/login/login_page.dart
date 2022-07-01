import 'package:flutter/material.dart';
import 'package:trance_me/app/ui/android/login/login_container.dart';
import 'package:trance_me/app/ui/android/login/login_social.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  _columnWidget() {
    return Column(
      children: const <Widget>[
        Expanded(
          flex: 2,
          child: LoginContainer(),
        ),
        Text("Entre com"),
        Expanded(child: LoginSocial()),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _columnWidget(),
    );
  }
}
