import 'package:flutter/material.dart';
import 'package:trance_me/app/ui/theme/app_colors.dart';

class CustomButon extends StatelessWidget {
  final double heigth;
  final String text;
  final VoidCallback? ontap;
  const CustomButon(
      {Key? key, this.heigth = 55.0, required this.text, required this.ontap})
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
            color: AppColor.bgButton,
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, color: AppColor.bgFieldCpf),
            ),
          ),
        ),
      ),
    );
  }
}
