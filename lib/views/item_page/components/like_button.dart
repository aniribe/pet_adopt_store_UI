import 'package:flutter/material.dart';
import '../../../config/app_colors.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 70,
      decoration: BoxDecoration(
        color: AppColors.primaryGreen,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 5,
            color: AppColors.grey700.withOpacity(0.4),
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Icon(
        Icons.favorite_border,
        color: AppColors.white,
      ),
    );
  }
}
