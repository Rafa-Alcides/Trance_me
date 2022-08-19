import 'package:flutter/material.dart';
import 'package:trance_me/src/config/custom_colors.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onPressed,
  });

  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          const CircleAvatar(
            maxRadius: 30,
            foregroundImage: AssetImage("assets/decoration.png"),
          ),
          Text(category,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: isSelected ? 16 : 14,
                  color: isSelected
                      ? CustomColors.customSwatchColor
                      : Colors.grey.shade400)),
        ],
      ),
    );
  }
}
