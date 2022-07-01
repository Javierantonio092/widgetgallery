import 'package:flutter/material.dart';
import 'package:widgetgallery/routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Gallery',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.root,
      routes: AppRoute.getRoutes(),
    );
  }
}
