import 'package:widgetgallery/models/menu_option.dart';
import 'package:flutter/material.dart';
import 'package:widgetgallery/screens/home_screen.dart';
import 'package:widgetgallery/screens/login_screen.dart';
import 'package:widgetgallery/screens/orders_screen.dart';
import 'package:widgetgallery/screens/profile_screen.dart';
import 'package:widgetgallery/screens/singup_screen.dart';

class AppRoute {
  static const String root = '/';
  static final List<MenuOption> listScreens = [
    MenuOption(
        title: 'House',
        route: '/',
        icon: Icons.house_outlined,
        screen: const HomeScreen()),
    MenuOption(
        title: 'Orders',
        route: '/orders',
        icon: Icons.list_outlined,
        screen: const OrderScreen()),
    MenuOption(
        title: 'Login',
        route: '/login',
        icon: Icons.login_outlined,
        screen: const LoginScreen()),
    MenuOption(
        title: 'Profile',
        route: '/profile',
        icon: Icons.person_outline,
        screen: const ProfileScreen()),
    MenuOption(
        title: 'Sing Up',
        route: '/singup',
        icon: Icons.account_circle_outlined,
        screen: const SingUpScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    for (MenuOption item in listScreens) {
      routes[item.route] = (context) => item.screen;
    }
    return routes;
  }
}
