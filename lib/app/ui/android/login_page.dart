import 'package:flutter/material.dart';
import 'package:trance_me/app/ui/android/components/custom_button.dart';
import 'package:trance_me/app/ui/android/components/custon_button_facebook.dart';
import '../theme/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 35, left: 22, right: 22),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                    hintText: "E-mail",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: AppColor.bgButton)),
                    hintStyle: const TextStyle(fontSize: 16),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(height: 20),
              TextFormField(
                autofocus: false,
                obscureText: true,
                //initialValue: "emailteste@gmail.com",
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: AppColor.bgButton)),
                    suffixIcon: const Icon(Icons.visibility_off),
                    suffixIconColor: AppColor.black,
                    hintText: "Senha",
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(height: 15),
              TextButton(
                style: TextButton.styleFrom(
                    alignment: Alignment.topLeft,
                    textStyle: const TextStyle(fontSize: 16)),
                onPressed: null,
                child: const Text("Esqueceu a Senha?"),
              ),
              const SizedBox(height: 15),
              CustomButon(text: "Login", ontap: () {}),
              const SizedBox(height: 76),
            ],
          ),
          const Text(
            "Entre com",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Login")),
              const SizedBox(height: 15),
              CustomButonFacebook(
                  text: "Continuar com o Facebook", ontap: () {}),
              const SizedBox(height: 20),
              TextButton(
                style: TextButton.styleFrom(
                    alignment: Alignment.topLeft,
                    textStyle: const TextStyle(fontSize: 16)),
                onPressed: null,
                child: const Text("Esqueceu a Senha?"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
