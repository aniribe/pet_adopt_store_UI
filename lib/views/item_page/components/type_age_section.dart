import 'package:flutter/cupertino.dart';
import '../../../data/data.dart';
import '../../../widgets/cat_age.dart';
import '../../../widgets/cat_type.dart';

class TypeAgeSection extends StatelessWidget {
  const TypeAgeSection({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CatType(type: pets[index].type),
        CatAge(age: pets[index].age),
      ],
    );
  }
}
