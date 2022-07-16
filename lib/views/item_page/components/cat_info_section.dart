import 'package:flutter/material.dart';
import 'package:pet_app_ui/views/item_page/components/type_age_section.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_size.dart';
import '../../../config/string_constants.dart';
import '../../../data/data.dart';
import '../../../widgets/cat_name_section.dart';
import 'address_setion.dart';

class CatInfoSection extends StatelessWidget {
  const CatInfoSection({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 130,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: AppColors.shadowList,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            CatNameSection(
              name: pets[index].name,
              sex: pets[index].sex == StringConstants.female
                  ? StringConstants.femaleImage
                  : StringConstants.maleImage,
            ),
            verticalSpace(height: 10),
            TypeAgeSection(index: index),
            verticalSpace(height: 10),
            AddressSection(index: index),
          ],
        ),
      ),
    );
  }
}
