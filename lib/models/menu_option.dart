import 'package:flutter/material.dart';

class MenuOption {
  final String route, title;
  final IconData icon;
  final Widget screen;

  MenuOption(
      {required this.title,
      required this.route,
      required this.icon,
      required this.screen});
}
