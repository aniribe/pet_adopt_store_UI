import 'package:flutter/cupertino.dart';
import 'package:pet_app_ui/config/app_colors.dart';

class CatNameSection extends StatelessWidget {
  final String name;
  final String sex;

  const CatNameSection({required this.name, required this.sex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
              color: AppColors.grey700),
        ),
        Container(
            height: 20,
            child: Image.asset(
              sex,
              color: AppColors.grey700,
            ))
      ],
    );
  }
}
