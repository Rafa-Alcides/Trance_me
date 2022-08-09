import 'package:flutter/material.dart';
import 'package:trance_me/src/config/custom_colors.dart';
import 'components/custon_text_field.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customBackground,
      body: Column(
        children: [
          Expanded(child: Container(
            padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 80
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //* CAMPOS
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
                    SizedBox(
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          )
                        ), 
                        child: Text("Login", style: TextStyle(
                          color: CustomColors.customWhite,
                          fontSize: 16  
                          ),),
                      )
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    //* DIVISOR
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 19),
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
                    SizedBox(
                      height: 55,
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
                          ),),
                      ),    
                    ),
                    //* CRIAR CONTA
                    TextButton(
                      onPressed: () {}, 
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
        ],
      ),
    );
  }
}