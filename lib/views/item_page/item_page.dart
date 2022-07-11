import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app_ui/config/app_colors.dart';
import 'package:pet_app_ui/config/app_size.dart';
import 'package:pet_app_ui/data/data.dart';
import 'package:pet_app_ui/util/string_constants.dart';
import 'package:pet_app_ui/views/main_part_home/components/cat_age.dart';
import 'package:pet_app_ui/views/main_part_home/components/cat_name_section.dart';
import 'package:pet_app_ui/views/main_part_home/components/cat_type.dart';

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
              Expanded(
                  child: Container(
                color: AppColors.blueGrey300,
                child: Center(
                  child: Container(
                      height: screenHeight(context) * 0.38,
                      child: Image.asset(
                        pets[index].image,
                        fit: BoxFit.cover,
                      )),
                ),
              )),
              Expanded(
                  child: Container(
                color: AppColors.white,
              ))
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: AppColors.grey700),
                    onPressed: () => Navigator.pop(context),
                  ),
                  IconButton(
                    icon: Icon(Icons.share, color: AppColors.grey700),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: AppColors.shadowList,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  CatNameSection(
                    name: pets[index].name,
                    sex: pets[index].sex == 'female'
                        ? StringConstants.femaleImage
                        : StringConstants.maleImage,
                  ),
                  verticalSpace(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CatType(type: pets[index].type),
                      CatAge(age: pets[index].age),
                    ],
                  ),
                  verticalSpace(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20,
                        color: AppColors.primaryGreen,
                      ),
                      horizontalSpace(width: 10),
                      Text(pets[index].address)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                      color: AppColors.primaryGreen,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color: AppColors.white,
                    ),
                  ),
                  horizontalSpace(width: 10),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColors.primaryGreen,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Adoption',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 24),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: AppColors.grey200,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
