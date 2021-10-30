import 'package:flutter/cupertino.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_size.dart';
import '../../../data/data.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    ));
  }
}
