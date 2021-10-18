import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_colors.dart';

class AppVerticalDivider extends StatelessWidget {
  const AppVerticalDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 20,
      color: AppColors.white.withOpacity(0.6),
    );
  }
}
