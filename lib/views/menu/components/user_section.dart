import 'package:flutter/material.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_size.dart';
import '../../../config/string_constants.dart';

class UserSection extends StatelessWidget {
  const UserSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundImage: AssetImage(StringConstants.avatar1Image)),
        horizontalSpace(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringConstants.userName,
              style: TextStyle(
                  color: AppColors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            verticalSpace(height: 5),
            Text(StringConstants.activeStatus,
                style: TextStyle(
                    color: AppColors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w500))
          ],
        ),
      ],
    );
  }
}
