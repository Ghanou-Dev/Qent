import 'package:flutter/material.dart';
import 'package:qent/constants/const.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool isPassword;
  final TextEditingController? controller;
  final IconButton? suffixIcon;
  final IconButton? prefixIcon;
  final TextInputType keyboardType;
  final String? Function(String? value)? validator;
  const CustomTextField({
    super.key,
    required this.hint,
    required this.isPassword,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: kBlack,
        ),
      ),
      child: TextFormField(
        validator: validator,
        controller: controller ,
        cursorColor: kBlack,
        obscureText: isPassword,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xffd7d7d7)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: kBlack, width: 2),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xffd7d7d7)),
          ),

          hint: Text(
            hint,
            style: TextStyle(
              fontFamily: 'tajawal',
              fontSize: 16,
              color: Color(0xff7F7F7F),
            ),
          ),

          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
