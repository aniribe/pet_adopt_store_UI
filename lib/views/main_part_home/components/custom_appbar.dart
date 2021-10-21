import 'package:flutter/material.dart';
import 'package:pet_app_ui/widgets/menu_button.dart';
import '../../../config/string_constants.dart';
import 'location_section.dart';

class CustomAppBar extends StatelessWidget {
  final bool isDrawerOpen;
  final VoidCallback onTap;

  const CustomAppBar({required this.isDrawerOpen, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MenuButton(isDrawerOpen: isDrawerOpen, onTap: onTap),
          LocationSection(),
          CircleAvatar(
              backgroundImage: AssetImage(StringConstants.avatar1Image)),
        ],
      ),
    );
  }
}
