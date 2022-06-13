import 'package:flutter/cupertino.dart';
import '../../../config/app_colors.dart';
import '../../../config/string_constants.dart';

class AdopDescriptionSection extends StatelessWidget {
  const AdopDescriptionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.adoptDescription,
      style: TextStyle(
        color: AppColors.grey700.withOpacity(0.5),
        fontWeight: FontWeight.bold,
        height: 1.5,
      ),
    );
  }
}
