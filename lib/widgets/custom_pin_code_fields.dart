import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:qent/constants/const.dart';

class CustomPinCodeFields extends StatelessWidget {
  final int length;
  final TextInputType? keyBoardType;
  final Function(String)? onComplete;
  const CustomPinCodeFields({
    super.key,
    required this.length,
    this.keyBoardType,
    this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: length,
      animationDuration: Duration(milliseconds: 250),
      keyboardType: keyBoardType ?? TextInputType.number,
      onCompleted: onComplete,
      hintCharacter: '-',
      hintStyle: TextStyle(fontWeight: FontWeight.bold),
      cursorColor: kBlack,

      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(15),

        fieldHeight: 63,
        fieldWidth: 67,

        activeColor: kGrey3, // لون الاطار الغير مكتمل
        inactiveColor: kGrey3, // لون الاطار المكتمل

        disabledColor: kBlack, // لون داخل الحقل الغير محدد
        selectedColor: kGrey3, // لون الاطار المحدد
      ),
    );
  }
}
