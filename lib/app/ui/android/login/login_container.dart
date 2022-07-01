import 'package:flutter/material.dart';
import 'package:trance_me/app/ui/theme/app_colors.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFieldCpf,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 22,
          right: 22,
        ),
        child: ListView(
          children: [
            SizedBox(height: 150, child: Image.asset("assets/logoo.png")),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              decoration: InputDecoration(
                  hintText: "E-mail",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: AppColor.bgButton)),
                  hintStyle: const TextStyle(fontSize: 16),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
            const SizedBox(height: 30),
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
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
            const SizedBox(height: 30),
            const TextButton(onPressed: null, child: Text("Esqueceu a Senha?")),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: () {}, child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
