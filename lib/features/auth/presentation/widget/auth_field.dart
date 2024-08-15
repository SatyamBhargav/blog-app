// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool
      isObscureText; // change the normal stirng character to '.' for password
  const AuthField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is missing';
        }
        return null;
      },
      obscureText: isObscureText,
      obscuringCharacter: '*',
    );
  }
}
