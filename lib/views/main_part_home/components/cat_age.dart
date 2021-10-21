import 'package:flutter/cupertino.dart';
import 'package:pet_app_ui/config/app_colors.dart';

class CatAge extends StatelessWidget {
  final String age;

  const CatAge({required this.age});

  @override
  Widget build(BuildContext context) {
    return Text(
      age,
      style: TextStyle(
        fontSize: 14,
        color: AppColors.grey700.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
