import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_app_ui/model/cat_model.dart';
import 'package:pet_app_ui/model/category_button.dart';

List<CategoryBtn> categories = [
  CategoryBtn(name: 'Cats', iconPath: 'assets/images/cat.png', isPressed: true),
  CategoryBtn(name: 'Dogs', iconPath: 'assets/images/dog.png'),
  CategoryBtn(name: 'Bunnies', iconPath: 'assets/images/rabbit.png'),
  CategoryBtn(name: 'Parrots', iconPath: 'assets/images/parrot.png'),
  CategoryBtn(name: 'Horses', iconPath: 'assets/images/horse.png'),
];

List<Cat> pets = [
  Cat(
    image: 'assets/images/pet-cat2.png',
    name: 'Sola',
    sex: 'female',
    age: '1 year old',
    type: 'Abyssinian cat',
    distance: '3.6 km',
    address: '5, Bulvarna-Kudritska Street, Kyiv',
  ),
  Cat(
    image: 'assets/images/pet-cat1.png',
    name: 'Orion',
    sex: 'male',
    age: '1.5 year old',
    type: 'Abyssinian cat',
    distance: '7.8 km',
    address: '5, Bulvarna-Kudritska Street, Kyiv',
  ),
];

List<Map> drawerItems = [
  {'icon': FontAwesomeIcons.paw, 'title': 'Adoption'},
  {'icon': Icons.mail, 'title': 'Donation'},
  {'icon': FontAwesomeIcons.plus, 'title': 'Add pet'},
  {'icon': Icons.favorite, 'title': 'Favorites'},
  {'icon': Icons.mail, 'title': 'Messages'},
  {'icon': FontAwesomeIcons.userAlt, 'title': 'Profile'},
];
