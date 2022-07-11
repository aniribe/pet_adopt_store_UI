import 'package:flutter/cupertino.dart';
import 'package:pet_app_ui/config/app_colors.dart';
import 'package:pet_app_ui/data/data.dart';

class AnimalIcon extends StatelessWidget {
  final int index;
  final bool isPressed;

  AnimalIcon({required this.index, required this.isPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isPressed ? AppColors.primaryGreen : AppColors.white,
        boxShadow: AppColors.shadowList,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        categories[index].iconPath,
        height: 50,
        width: 50,
        color: isPressed ? AppColors.white : AppColors.grey700,
      ),
    );
  }
}
