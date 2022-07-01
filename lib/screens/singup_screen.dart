import 'package:flutter/material.dart';
import 'package:widgetgallery/routes/app_routes.dart';
import 'package:widgetgallery/widgets/bottom_menu.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomMenu(
          items: AppRoute.listScreens,
        ),
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          title: const Text('Widget Gallery'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: const <Widget>[
              FlutterLogo(size: 300),
              SizedBox(height: 5),
              Text('Singup Screen ...'),
            ],
          ),
        ));
  }
}
