import 'package:flutter/cupertino.dart';
import 'package:pet_app_ui/config/app_colors.dart';
import 'package:pet_app_ui/data/data.dart';
import 'information_card.dart';

class PetInformationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(0),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: pets.length,
        itemBuilder: (context, index) {
          return InformationCard(
            color: index % 2 == 0 ? AppColors.blueGrey300 : AppColors.orange100,
            cat: pets[index],
            heroTag: index + 1,
          );
        });
  }
}
