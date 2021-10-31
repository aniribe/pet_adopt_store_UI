import 'package:flutter/material.dart';
import '../config/app_colors.dart';
import '../config/app_size.dart';
import '../config/string_constants.dart';

class UserSection extends StatelessWidget {
  final String avatarImage;
  final Color textColor;
  final String userName;
  final String status;

  const UserSection({
    Key? key,
    required this.avatarImage,
    required this.textColor,
    required this.userName,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundImage: AssetImage(avatarImage)),
        horizontalSpace(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: TextStyle(
                  color: textColor.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            Text(
              status,
              style: TextStyle(
                  color: textColor.withOpacity(0.5),
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ],
    );
  }
}
