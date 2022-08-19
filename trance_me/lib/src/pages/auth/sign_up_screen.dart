import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:trance_me/src/config/custom_colors.dart';

import 'components/custom_checkbox.dart';
import 'components/custom_eleveted_button.dart';
import 'components/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
   const SignUpScreen({super.key});

  

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final cpfFormatter = MaskTextInputFormatter(
    mask: "###.###.###-##",
    filter: {"#": RegExp(r'[0-9]')}  
  );

  final phoneFormatter = MaskTextInputFormatter(
    mask: "(##)# ####-####",
    filter: {"#": RegExp(r'[0-9]')}  
  );

  final dateFormatter = MaskTextInputFormatter(
    mask: "##/##/####",
    filter: {"#": RegExp(r'[0-9]')}  
  );
  
  bool termsCheck = false;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

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
                CustonTextField(labelText: "Nome", filled: CustomColors.customInput, typeKeyboard: TextInputType.name),
                CustonTextField(labelText: "E-mail", filled: CustomColors.customInput, typeKeyboard: TextInputType.emailAddress),
                CustonTextField(labelText: "Telefone", filled: CustomColors.customInput, typeKeyboard: TextInputType.phone, inputFormatters: [phoneFormatter],),
                CustonTextField(labelText: "CPF", filled: CustomColors.customWhite, typeKeyboard: TextInputType.number, inputFormatters: [cpfFormatter]),
                CustonTextField(labelText: "Data de Nascimento", filled: CustomColors.customInput, typeKeyboard: TextInputType.number, inputFormatters: [dateFormatter]),
                CustonTextField(labelText: "Senha", filled: CustomColors.customGrey, isSecret: true, typeKeyboard: TextInputType.text),
                CustomCheckbox(
                  value: termsCheck,
                  onChanged: ((value) => setState(() {
                    termsCheck = value!;
                  })),
                ),
                const CustomElevetedButton(name: "Cadastrar",),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  }, 
                  child: Text("JÁ POSSUI CONTA? Clique aqui", style: TextStyle(
                    color:  CustomColors.customText4, 
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