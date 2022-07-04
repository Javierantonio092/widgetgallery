import 'package:flutter/material.dart';
import 'package:widgetgallery/models/country.dart';
import 'package:widgetgallery/routes/app_routes.dart';
import 'package:widgetgallery/widgets/bottom_menu.dart';

import '../widgets/input_form.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: const Text('Widget Gallery'),
      ),
      bottomNavigationBar: BottomMenu(
        items: AppRoute.listScreens,
      ),
      body: SingleChildScrollView(
          child: Form(
              child: Column(
        children: const <Widget>[
          //Apellidos
          InputForm(
            labelText: 'Last Name',
            hintText: 'Enter your last name',
            icon: Icons.abc,
            isRequired: true,
          ),

          //Correo
          InputForm(
            labelText: 'Email',
            hintText: 'Enter your email',
            icon: Icons.email,
            isRequired: true,
            keyboardType: TextInputType.emailAddress,
          ),

          //Telefono\
          //change
          InputForm(
            labelText: 'Phone',
            hintText: 'Enter your phone',
            icon: Icons.email,
            isRequired: true,
            keyboardType: TextInputType.phone,
          ),
        ],
      ))),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          const snackBar = SnackBar(
            content: Text('You have successfully signed up!!!'),
            backgroundColor: Colors.green,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }

  List<Country> _getCountries() => <Country>[
        const Country(name: 'United States', code: 'US'),
        const Country(name: 'Canada', code: 'CA'),
        const Country(name: 'United Kingdom', code: 'UK'),
        const Country(name: 'Australia', code: 'AU'),
        const Country(name: 'Germany', code: 'DE'),
        const Country(name: 'France', code: 'FR'),
        const Country(name: 'Italy  ', code: 'IT'),
        const Country(name: 'Spain', code: 'ES'),
        const Country(name: 'Brazil', code: 'BZ'),
        const Country(name: 'Argentina', code: 'AR'),
        const Country(name: 'Mexico', code: 'MX'),
        const Country(name: 'India', code: 'IN'),
        const Country(name: 'China', code: 'CN'),
        const Country(name: 'Japan', code: 'JP'),
        const Country(name: 'Korea', code: 'KR'),
        const Country(name: 'Taiwan', code: 'TW'),
        const Country(name: 'Russia', code: 'RU'),
        const Country(name: 'Netherlands', code: 'LN'),
        const Country(name: 'Select a country', code: 'none'),
      ];
}
