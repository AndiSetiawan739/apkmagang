import 'package:apkmagang/utils/constant.dart';
import 'package:flutter/material.dart';

class FormInputTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType inputType;
  final bool secureText;

  const FormInputTextfield({
    super.key,
    required this.controller,
    required this.hint,
    this.prefixIcon,
    this.suffixIcon,
    required this.inputType,
    required this.secureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      obscureText: secureText,
      textInputAction: TextInputAction.done,
      style: styleSubtitle.copyWith(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: styleSubtitle.copyWith(
          color: Colors.lightBlue,
        ),
        // filled: true,
        // fillColor: Colors.transparent,
        //fillColor: Colors.black.withOpacity(0.4),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Color(0xFFFFFFFF), // Warna border putih
            width: setWidth(5),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.lightBlue, // Warna border putih
            width: setWidth(5),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.red,
            width: setWidth(5),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.red,
            width: setWidth(5),
          ),
        ),
      ),
    );
  }
}
