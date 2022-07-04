import 'package:flutter/material.dart';
import 'package:widgetgallery/models/gender.dart';

class GendersControl extends StatefulWidget {
  const GendersControl({Key? key}) : super(key: key);

  @override
  State<GendersControl> createState() => _GendersControlState();
}

class _GendersControlState extends State<GendersControl> {
  Gender? _gender = Gender.notSpecify;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Select a Gender'),
        const Divider(),
        RadioListTile(
          value: Gender.female,
          groupValue: _gender,
          onChanged: (Gender? value) => setState(() {
            _gender = value;
          }),
          title: const Text('Female'),
        ),
        RadioListTile(
          value: Gender.male,
          groupValue: _gender,
          onChanged: (Gender? value) => setState(() {
            _gender = value;
          }),
          title: const Text('Male'),
        ),
        RadioListTile(
          value: Gender.notSpecify,
          groupValue: _gender,
          onChanged: (Gender? value) => setState(() {
            _gender = value;
          }),
          title: const Text('Prefer not specify'),
        )
      ],
    );
  }
}
