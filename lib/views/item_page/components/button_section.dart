import 'package:flutter/material.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_size.dart';
import 'adopt_button.dart';
import 'like_button.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 120,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: AppColors.grey200,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Row(
          children: [
            const LikeButton(),
            horizontalSpace(width: 10),
            const AdoptButton()
          ],
        ),
      ),
    );
  }
}
