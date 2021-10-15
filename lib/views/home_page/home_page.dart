import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app_ui/views/main_part_home/main_part_home_page.dart';

import '../menu/menu_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MenuDrawer(),
          MainPartHomePage(),
        ],
      ),
    );
  }
}
