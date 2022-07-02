import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trance_me/app/ui/theme/app_colors.dart';

class CustomButonSocial extends StatelessWidget {
  final double heigth;
  final Color? color;
  final String text;
  final VoidCallback? ontap;
  final IconData icon;
  const CustomButonSocial(
      {Key? key,
      this.heigth = 55.0,
      required this.text,
      required this.ontap,
      required this.icon,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: InkWell(
        child: Ink(
          height: heigth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: color),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                icon,
                color: AppColor.bgButtoFacebook,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(text,
                  style: const TextStyle(
                    fontSize: 16,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
