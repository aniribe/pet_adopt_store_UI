import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_size.dart';
import 'package:pet_app_ui/views/item_page/components/user_date_line.dart';
import 'package:pet_app_ui/widgets/user_section.dart';
import '../../../config/app_colors.dart';
import '../../../config/string_constants.dart';

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
          Text(
            StringConstants.adoptDescription,
            style: TextStyle(
              color: AppColors.grey700.withOpacity(0.5),
              fontWeight: FontWeight.bold,
              height: 1.5,
            ),
          ),
        ],
      ),
    ));
  }
}
