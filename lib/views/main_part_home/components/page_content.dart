import 'package:flutter/cupertino.dart';
import 'package:pet_app_ui/views/main_part_home/components/pet_information_section.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_size.dart';
import '../../../widgets/search_bar.dart';
import 'button_row_section.dart';

class PageContent extends StatelessWidget {
  const PageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.grey200,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          )),
      child: Column(
        children: [
          SearchBar(),
          ButtonRowSection(),
          PetInformationSection(),
          verticalSpace(height: 50),
        ],
      ),
    );
  }
}
