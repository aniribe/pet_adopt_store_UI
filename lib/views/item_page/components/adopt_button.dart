import 'package:flutter/cupertino.dart';
import '../../../config/app_colors.dart';
import '../../../config/string_constants.dart';

class AdoptButton extends StatelessWidget {
  const AdoptButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 55,
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
        child: Center(
          child: Text(
            StringConstants.adoption,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
