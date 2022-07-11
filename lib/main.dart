import 'package:flutter/material.dart';
import 'package:pet_app_ui/views/home_page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Circular'),
      home: HomePage(),
    );
  }
}
