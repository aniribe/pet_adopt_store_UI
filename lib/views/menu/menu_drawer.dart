import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_colors.dart';
import 'package:pet_app_ui/config/app_size.dart';
import 'package:pet_app_ui/data/data.dart';
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
          ItemListSection(),
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

class ItemListSection extends StatelessWidget {
  const ItemListSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: drawerItems
          .map((item) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      item['icon'],
                      color: AppColors.white,
                      size: 30,
                    ),
                    horizontalSpace(width: 10),
                    Text(
                      item['title'],
                      style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }
}
