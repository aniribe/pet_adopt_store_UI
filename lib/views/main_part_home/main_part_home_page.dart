import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_colors.dart';
import 'package:pet_app_ui/config/app_size.dart';
import 'package:pet_app_ui/widgets/search_bar.dart';
import 'components/button_row_section.dart';
import 'components/custom_appbar.dart';
import 'components/pet_information_section.dart';

class MainPartHomePage extends StatefulWidget {
  @override
  _MainPartHomePageState createState() => _MainPartHomePageState();
}

class _MainPartHomePageState extends State<MainPartHomePage> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  void changePosition() {
    isDrawerOpen = !isDrawerOpen;

    setState(() {
      if (isDrawerOpen) {
        xOffset = 230;
        yOffset = 150;
        scaleFactor = 0.6;
      } else {
        xOffset = 0;
        yOffset = 0;
        scaleFactor = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: AppColors.grey200,
        borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(height: isDrawerOpen ? 10 : 50),
            CustomAppBar(isDrawerOpen: isDrawerOpen, onTap: changePosition),
            SearchBar(),
            ButtonRowSection(),
            PetInformationSection(),
            verticalSpace(height: 50),
          ],
        ),
      ),
    );
  }
}
