import 'package:flutter/cupertino.dart';
import '../../../config/app_colors.dart';
import '../../../config/string_constants.dart';
import '../../../widgets/user_section.dart';

class UserDateLine extends StatelessWidget {
  const UserDateLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserSection(
          avatarImage: StringConstants.avatar2Image,
          textColor: AppColors.grey700,
          userName: StringConstants.ownerName,
          status: StringConstants.ownerStatus,
        ),
        Text(
          StringConstants.date,
          style: TextStyle(
            color: AppColors.grey700.withOpacity(0.5),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
