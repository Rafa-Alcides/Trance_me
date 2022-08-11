import 'package:flutter/material.dart';
import '../../config/custom_colors.dart';

class CustomElevetedButton extends StatelessWidget {

  final String name;
  final Function()? onPressed;

  const CustomElevetedButton({super.key, required this.name, this.onPressed});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ), 
              child: Text(name, style: TextStyle(
                color: CustomColors.customWhite,
                fontSize: 16  
              ),),
            )
          ),
        ),
      ),
    );
  }
}