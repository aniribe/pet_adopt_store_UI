import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app_ui/model/cat_model.dart';
import 'package:pet_app_ui/util/string_constants.dart';
import 'package:pet_app_ui/views/item_page/item_page.dart';
import 'package:pet_app_ui/views/main_part_home/components/pet_section.dart';
import 'card_info_section.dart';

class InformationCard extends StatelessWidget {
  final Color color;
  final Cat cat;
  final int heroTag;

  const InformationCard(
      {required this.color, required this.cat, required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ItemPage(index: heroTag - 1)));
      },
      child: Container(
        height: 240,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            PetSection(image: cat.image.toString(), color: color, tag: heroTag),
            CardInfoSection(
              name: cat.name,
              sex: cat.sex == 'female'
                  ? StringConstants.femaleImage
                  : StringConstants.maleImage,
              type: cat.type,
              age: cat.age,
              distance: cat.distance,
            ),
          ],
        ),
      ),
    );
  }
}
