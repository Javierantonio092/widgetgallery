import 'package:flutter/material.dart';
import 'package:widgetgallery/models/country.dart';
import 'package:widgetgallery/models/models.dart';

class DropDownForm extends StatefulWidget {
  final List<Country> countries;

  const DropDownForm({
    Key? key,
    required this.countries,
  }) : super(key: key);

  @override
  State<DropDownForm> createState() => _DropDownFormState();
}

class _DropDownFormState extends State<DropDownForm> {
  String _selectedCountry = 'none';

  List<DropdownMenuItem<String>> _buildDropDownItems(List<Country> items) {
    return items.map((Country item) {
      return DropdownMenuItem<String>(
        value: item.code,
        child: Text(item.name),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      items: _buildDropDownItems(widget.countries),
      value: _selectedCountry,
      onChanged: (value) => setState(() {
        _selectedCountry = value ?? 'none';
      }),
    );
  }
}
