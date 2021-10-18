import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_colors.dart';
import 'package:pet_app_ui/config/app_size.dart';

class MenuButton extends StatelessWidget {
  final bool isDrawerOpen;
  final VoidCallback onTap;

  const MenuButton({required this.isDrawerOpen, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: isDrawerOpen
          ? const Icon(Icons.arrow_back_ios)
          : Column(
              children: [
                Divider(
                  color: AppColors.grey700.withOpacity(0.7),
                  thickness: 2.5,
                  height: 2,
                  indent: 10,
                  endIndent: 10,
                ),
                verticalSpace(height: 6),
                Divider(
                  color: AppColors.grey700.withOpacity(0.7),
                  thickness: 2.5,
                  height: 2,
                  indent: 5,
                  endIndent: 5,
                ),
                verticalSpace(height: 6),
                Divider(
                  color: AppColors.grey700.withOpacity(0.7),
                  thickness: 2.5,
                  height: 2,
                  indent: 10,
                  endIndent: 10,
                ),
              ],
            ),
      onPressed: onTap,
    );
  }
}
