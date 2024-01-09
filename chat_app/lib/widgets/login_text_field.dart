import 'package:flutter/material.dart';

import '../utils/textfield_styles.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool hasAsterisks;
  final FormFieldValidator<String>? validator;

  const LoginTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.validator,
      this.hasAsterisks = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hasAsterisks,
      validator: (value) {
        if (validator != null) {
          return validator!(value);
        }
      },
      controller: controller,
      decoration: InputDecoration(
          hintText: 'Add your username',
          hintStyle: ThemeTextStyle.loginTextFieldStyle,
          border: OutlineInputBorder()),
    );
  }
}
