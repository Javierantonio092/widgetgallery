import 'package:flutter/material.dart';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:widgetgallery/routes/app_routes.dart';
import 'package:widgetgallery/widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        items: AppRoute.listScreens,
      ),
      backgroundColor: Colors.lightGreenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const <Widget>[
            FlutterLogo(
              size: 300,
            ),
            SizedBox(
              height: 5,
            ),
            Text('Home Screen ...'),
          ],
        ),
      ),
    );
  }
}
