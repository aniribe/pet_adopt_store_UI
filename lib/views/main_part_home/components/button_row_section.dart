import 'package:flutter/cupertino.dart';
import 'package:pet_app_ui/config/app_size.dart';
import 'package:pet_app_ui/data/data.dart';
import 'animal_icon.dart';

class ButtonRowSection extends StatefulWidget {
  @override
  _ButtonRowSectionState createState() => _ButtonRowSectionState();
}

class _ButtonRowSectionState extends State<ButtonRowSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => onButtonPressed(index),
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimalIcon(
                      index: index,
                      isPressed: categories[index].isPressed,
                    ),
                    verticalSpace(height: 7),
                    Text(
                      categories[index].name,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  void onButtonPressed(int index) {
    setState(() {
      categories.forEach((element) {
        element.isPressed = false;
      });

      categories[index].isPressed = !categories[index].isPressed;
    });
  }
}
