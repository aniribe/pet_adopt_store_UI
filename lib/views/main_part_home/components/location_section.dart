import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_colors.dart';
import 'package:pet_app_ui/config/app_size.dart';
import 'package:pet_app_ui/config/string_constants.dart';

class LocationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          StringConstants.location,
          style: TextStyle(
            color: AppColors.grey700.withOpacity(0.6),
            fontWeight: FontWeight.w500,
          ),
        ),
        verticalSpace(height: 7),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: AppColors.primaryGreen,
            ),
            horizontalSpace(width: 5),
            Row(
              children: [
                Text(
                  StringConstants.city,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey700,
                    fontSize: 18,
                  ),
                ),
                Text(
                  StringConstants.country,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey700.withOpacity(0.6),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
