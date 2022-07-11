import 'package:flutter/cupertino.dart';

Widget verticalSpace({required double height}) => SizedBox(height: height);

Widget horizontalSpace({required double width}) => SizedBox(width: width);

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
