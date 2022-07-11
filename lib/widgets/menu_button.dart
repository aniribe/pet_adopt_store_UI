import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final bool isDrawerOpen;
  final VoidCallback onTap;

  const MenuButton({required this.isDrawerOpen, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isDrawerOpen ? Icons.arrow_back_ios : Icons.menu),
      onPressed: onTap,
    );
  }
}
