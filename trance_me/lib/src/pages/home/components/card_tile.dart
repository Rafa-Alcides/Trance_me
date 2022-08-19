import 'package:flutter/material.dart';
import 'package:trance_me/src/config/custom_colors.dart';
import 'package:trance_me/src/models/card_model.dart';

class CardTile extends StatelessWidget {
  const CardTile({super.key, required this.item});

  final CardModel item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Card(
        color: CustomColors.customCardBackground,
        elevation: 2,
        shadowColor: Colors.grey.shade400,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Image.asset(item.imgUrl),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        item.itemTitle,
                        style: TextStyle(
                            fontSize: 19,
                            color: CustomColors.customTextTitleCard),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      item.description,
                      style: TextStyle(
                          fontSize: 10,
                          color: CustomColors.customTextSubtitleCard),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
