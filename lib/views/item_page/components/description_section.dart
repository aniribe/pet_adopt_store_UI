import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_size.dart';
import 'package:pet_app_ui/views/item_page/components/user_date_line.dart';
import '../../../config/app_colors.dart';
import 'adopt_description_section.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 50),
      color: AppColors.white,
      child: Column(
        children: [
          const UserDateLine(),
          verticalSpace(height: 30),
          const AdopDescriptionSection(),
        ],
      ),
    ));
  }
}
