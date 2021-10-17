import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_colors.dart';
import 'package:pet_app_ui/config/app_size.dart';
import 'package:pet_app_ui/data/data.dart';
import 'components/item_list_section.dart';
import 'components/user_section.dart';

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
          const UserSection(),
          const ItemListSection(),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: AppColors.white,
              ),
              horizontalSpace(width: 10),
              const Text(
                'Settings',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              horizontalSpace(width: 10),
              Container(
                width: 2,
                height: 20,
                color: Colors.white,
              ),
              horizontalSpace(width: 10),
              const Text(
                'Log out',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
