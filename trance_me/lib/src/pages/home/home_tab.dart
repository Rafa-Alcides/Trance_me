import 'package:flutter/material.dart';
import 'package:trance_me/src/pages/home/components/card_tile.dart';
import '../../config/custom_colors.dart';
import 'components/category_tile.dart';
import 'package:trance_me/src/config/app_data.dart' as app_data;

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String selectedCategory = "Tranças";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TranceMe",
          style: TextStyle(fontSize: 19, color: CustomColors.customSwatchColor),
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: SizedBox(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Buscar",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade300,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  suffixIcon: const Icon(Icons.search, size: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 15,
              top: 10,
            ),
            height: 90,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CategoryTile(
                  onPressed: () {
                    setState(() {
                      selectedCategory = app_data.categories[index];
                    });
                    selectedCategory = app_data.categories[index];
                  },
                  category: app_data.categories[index],
                  isSelected: app_data.categories[index] == selectedCategory,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(width: 20),
              itemCount: app_data.categories.length,
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (_, index) => const SizedBox(height: 13),
              itemCount: app_data.items.length,
              itemBuilder: (_, index) {
                return CardTile(
                  item: app_data.items[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
