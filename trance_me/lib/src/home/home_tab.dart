import 'package:flutter/material.dart';

import '../config/custom_colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("TranceMe", style: TextStyle(
          fontSize: 19, 
          color: CustomColors.customSwatchColor
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 30,  
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Divider(
                    thickness: 2,
                    color: CustomColors.customGreyLine,
                  ),
              ),
              Image.asset("assets/decoration.png"),

              SizedBox(
                width: 40,
                child: Divider(
                  thickness: 2,
                  color: CustomColors.customGreyLine,
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}