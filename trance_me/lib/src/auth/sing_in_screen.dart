import 'package:flutter/material.dart';
import 'package:trance_me/src/auth/components/theme.dart';
import 'components/custon_text_field.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
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
                    const CustonTextField(labelText: "Email", filled: Color(0xFFffffff)),
                    const CustonTextField(labelText: "Senha", isSecret: true, filled: Color(0xffFFEEE5)),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 19),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {}, 
                          child: const Text("Esqueceu a Senha?", style: TextStyle(color: Color(0xff1D293F), fontSize: 18,fontWeight: FontWeight.w300),)
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          )
                        ), 
                        child: const Text("Login", style: TextStyle(color: Colors.white),),
                      )
                    ),

                    const SizedBox(
                      height: 60,
                    ),

                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 19),
                        child: Text("Entre com", 
                          style: TextStyle(
                            color: Color(0xff1D293F), 
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                          ),
                      ),
                    ),
        

                    SizedBox(
                      height: 55,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side:  BorderSide(
                            width: 2,
                            color: TranceMeTheme.light.colorScheme.primary
                          )
                        ),
                        onPressed: () {}, 
                        child: const Text("Continuar com o Google", style: TextStyle(color: Colors.black),),
                      ),    
                    ),
                    
                       
                    TextButton(
                      onPressed: () {}, 
                      child: const Text("NOVO? Crie uma conta Agora!", style: TextStyle(color: Color(0xff1D293F), fontSize: 18,fontWeight: FontWeight.w300),)
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