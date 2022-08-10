import 'package:flutter/material.dart';
import '../../config/custom_colors.dart';

class CustomElevetedButton extends StatelessWidget {

  final String name;

  const CustomElevetedButton({super.key, required this.name});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
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