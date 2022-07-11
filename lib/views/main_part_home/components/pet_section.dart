import 'package:flutter/cupertino.dart';
import 'package:pet_app_ui/config/app_colors.dart';

class PetSection extends StatelessWidget {
  final String image;
  final Color color;
  final int tag;

  const PetSection(
      {required this.image, required this.color, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
                boxShadow: AppColors.shadowList),
          ),
          Align(
            child: Hero(
              tag: tag,
              child: Image.asset(image),
            ),
          ),
        ],
      ),
    );
  }
}
