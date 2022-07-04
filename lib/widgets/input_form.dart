import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final bool isRequired;
  final String? labelText, hintText, errorText, helperText, value;
  final IconData? icon;
  final bool focused, autoValidation, readOnly;
  final TextInputType keyboardType;

  const InputForm({
    Key? key,
    this.isRequired = false,
    required this.hintText,
    this.labelText = '',
    this.errorText = '',
    this.helperText = '',
    this.value = '',
    this.icon,
    this.autoValidation = false,
    this.focused = false,
    this.keyboardType = TextInputType.text,
    this.readOnly = false,
  }) : super(key: key);

  String? onValidate(String value) {
    if (value.isEmpty) {
      return 'This $hintText field is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      autofocus: focused,
      keyboardType: keyboardType,
      textCapitalization: TextCapitalization.words,
      validator: isRequired ? (value) => onValidate(value ?? '') : null,
      autovalidateMode: isRequired
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: icon != null ? Icon(icon) : null,
        helperText: helperText,
      ),
    );
  }
}
