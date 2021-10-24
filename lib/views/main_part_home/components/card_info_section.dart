import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_colors.dart';

import '../../../widgets/cat_age.dart';
import '../../../widgets/cat_name_section.dart';
import '../../../widgets/cat_type.dart';
import 'distance_section.dart';

class CardInfoSection extends StatelessWidget {
  final String name;
  final String sex;
  final String type;
  final String age;
  final String distance;

  const CardInfoSection(
      {required this.name,
      required this.sex,
      required this.type,
      required this.age,
      required this.distance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 60, bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: AppColors.shadowList,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatNameSection(name: name, sex: sex),
            CatType(type: type),
            CatAge(age: age),
            DistanceSection(distance: distance),
          ],
        ),
      ),
    );
  }
}
