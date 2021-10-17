import 'package:flutter/cupertino.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_size.dart';
import '../../../data/data.dart';

class ItemListSection extends StatelessWidget {
  const ItemListSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: drawerItems
          .map((item) => Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8, top: 8, bottom: 25),
                child: Row(
                  children: [
                    Icon(
                      item['icon'],
                      color: AppColors.white.withOpacity(0.5),
                      size: 20,
                    ),
                    horizontalSpace(width: 20),
                    Text(
                      item['title'],
                      style: TextStyle(
                          color: AppColors.white.withOpacity(0.5),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }
}
