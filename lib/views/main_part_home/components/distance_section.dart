import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_colors.dart';

class DistanceSection extends StatelessWidget {
  final String distance;

  const DistanceSection({required this.distance});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          size: 20,
          color: AppColors.primaryGreen,
        ),
        Text('Distance: $distance'),
      ],
    );
  }
}
