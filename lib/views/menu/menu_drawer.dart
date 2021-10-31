import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_colors.dart';
import '../../config/string_constants.dart';
import 'components/item_list_section.dart';
import 'components/settings_section.dart';
import '../../widgets/user_section.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryGreen,
      padding: const EdgeInsets.only(top: 50, bottom: 70, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserSection(
            avatarImage: StringConstants.avatar1Image,
            textColor: AppColors.white,
            userName: StringConstants.userName,
            status: StringConstants.activeStatus,
          ),
          const ItemListSection(),
          const SettingsSection(),
        ],
      ),
    );
  }
}
