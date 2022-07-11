import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_colors.dart';
import 'package:pet_app_ui/config/app_size.dart';

class LocationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Location'),
        verticalSpace(height: 7),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: AppColors.primaryGreen,
            ),
            horizontalSpace(width: 5),
            Text('Baku, Azerbaijan'),
          ],
        ),
      ],
    );
  }
}
