import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.suffixIcon,
    required this.hintText,
    required this.inputType,
  });
  final Widget? suffixIcon;
  final String hintText;
  final TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        filled: true,
        fillColor: Color(0xFFF9FAFA),

        suffixIcon: suffixIcon,
        suffixIconColor: Color(0xffC9CECF),
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xFF949D9E)),
        border: buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: const Color(0xFFE6E9E9),
        width: 1,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
    );
  }
}
