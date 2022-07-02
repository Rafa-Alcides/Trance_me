import 'package:flutter/material.dart';
import 'package:trance_me/app/ui/theme/app_colors.dart';

class CustomButonFacebook extends StatelessWidget {
  final double heigth;
  final String text;
  final VoidCallback? ontap;
  final IconData icone;
  const CustomButonFacebook(
      {Key? key, this.heigth = 55.0, required this.text, required this.ontap, required this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: InkWell(
        child: Ink(
          height: heigth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColor.bgButtoFacebook,
          ),
          child: Row(
            children[]: Text(
              text,
              style: const TextStyle(fontSize: 16, color: AppColor.bgFieldCpf),
            ),
          ),
        ),
      ),
    );
  }
}
