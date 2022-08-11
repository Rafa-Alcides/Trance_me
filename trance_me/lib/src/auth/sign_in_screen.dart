import 'package:flutter/material.dart';
import 'package:trance_me/src/auth/sign_up_screen.dart';
import 'package:trance_me/src/config/custom_colors.dart';
import '../base/base_screen.dart';
import 'components/custom_eleveted_button.dart';
import 'components/custom_text_field.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({super.key});
  @override
  Widget build(BuildContext context) {

    final size =  MediaQuery.of(context).size; 

    return Scaffold(
      backgroundColor: CustomColors.customBackground,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                CustonTextField(labelText: "Email", filled: CustomColors.customWhite),
                CustonTextField(labelText: "Senha", isSecret: true, filled: CustomColors.customInput),
                //* ESQUECEU A SENHA
                Padding(
                  padding: const EdgeInsets.only(bottom: 19),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {}, 
                      child: Text("Esqueceu a Senha?", style: TextStyle(
                        color: CustomColors.customBlackText, fontSize: 18,
                        fontWeight: FontWeight.w300
                        ),)
                    ),
                  ),
                ),
                //*BOTÃO LOGIN
                 CustomElevetedButton(
                  name: "Login",
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (c) {
                          return  const BaseScreen();
                        }
                      )
                    );
                  },
                ),
                //* DIVISOR
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text("Entre com", 
                      style: TextStyle(
                        color: CustomColors.customBlackText, 
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                      ),
                  ),
                ),
                //* LOGIN GOOGLE
                //! CUSTOMIZAR BOTAO DE LOGIN GOOGLE
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side:  BorderSide(
                          width: 2,
                          color: CustomColors.customSwatchColor
                        )
                      ),
                      onPressed: () {}, 
                      child: Text("Continuar com o Google", style: TextStyle(
                        color: CustomColors.customBlackText,
                        fontSize: 16
                        ),
                      ),
                    ),    
                  ),
                ),
                //* CRIAR CONTA
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (c) {
                          return const SignUpScreen();
                        } 
                      )
                    );
                  }, 
                  child: Text("NOVO? Crie uma conta Agora!", style: TextStyle(
                    color:  CustomColors.customText2, 
                    fontSize: 18,
                    fontWeight: FontWeight.w300),)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}