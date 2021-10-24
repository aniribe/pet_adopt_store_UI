import 'package:flutter/cupertino.dart';
import 'package:pet_app_ui/config/app_colors.dart';

class CatType extends StatelessWidget {
  final String type;

  const CatType({required this.type});

  @override
  Widget build(BuildContext context) {
    return Text(
      type,
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.grey700.withOpacity(0.7)),
    );
  }
}
