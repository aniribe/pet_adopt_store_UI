import 'package:flutter/material.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_size.dart';
import '../../../data/data.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          size: 20,
          color: AppColors.primaryGreen,
        ),
        horizontalSpace(width: 10),
        Text(
          pets[index].address,
          style: TextStyle(
            color: AppColors.grey700.withOpacity(0.6),
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
