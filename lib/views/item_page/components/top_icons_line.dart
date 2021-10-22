import 'package:flutter/material.dart';
import '../../../config/app_colors.dart';

class TopIconsLine extends StatelessWidget {
  const TopIconsLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Align(
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: AppColors.grey700),
              onPressed: () => Navigator.pop(context),
            ),
            IconButton(
              icon: Icon(Icons.share, color: AppColors.grey700),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
