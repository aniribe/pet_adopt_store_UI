import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_colors.dart';
import 'package:pet_app_ui/config/app_size.dart';
import 'package:pet_app_ui/data/data.dart';
import 'package:pet_app_ui/config/string_constants.dart';
import 'package:pet_app_ui/widgets/cat_age.dart';
import 'package:pet_app_ui/widgets/cat_name_section.dart';
import 'package:pet_app_ui/widgets/cat_type.dart';

import 'components/button_section.dart';
import 'components/cat_info_section.dart';
import 'components/description_section.dart';
import 'components/image_section.dart';
import 'components/top_icons_line.dart';

class ItemPage extends StatelessWidget {
  final int index;

  ItemPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              ImageSection(index: index),
              const DescriptionSection(),
            ],
          )),
          const TopIconsLine(),
          verticalSpace(height: 20),
          CatInfoSection(index: index),
          const ButtonSection(),
        ],
      ),
    );
  }
}
