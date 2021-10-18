import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/string_constants.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_size.dart';
import '../../../widgets/app_vertical_divider.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.settings,
          color: AppColors.white.withOpacity(0.6),
        ),
        horizontalSpace(width: 10),
        Text(
          StringConstants.settings,
          style: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        horizontalSpace(width: 20),
        const AppVerticalDivider(),
        horizontalSpace(width: 20),
        Text(
          StringConstants.logout,
          style: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
