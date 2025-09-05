import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:qent/constants/const.dart';
import 'package:qent/widgets/custom_elevated_button.dart';

class Confirmation extends StatefulWidget {
  final String keyNumber;
  final String number;
  const Confirmation({
    required this.keyNumber,
    required this.number,
    super.key,
  });

  static const String pageRoute = 'Confirmation';

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Image.asset(
                      "assets/images/logo_dark.png",
                      width: 36,
                      height: 36,
                    ),
                    Gap(8),
                    Text(
                      'Qent',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                Gap(200),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Enter verification code',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: kBlack,
                      ),
                    ),
                    Gap(10),
                    Text(
                      'We have send a Code to : ${widget.keyNumber}${widget.number.replaceRange(0, widget.number.length - 2, '******')}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: kGrey2,
                      ),
                    ),
                    Gap(40),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: PinCodeTextField(
                        appContext: context,
                        length: 4,
                        animationDuration: Duration(milliseconds: 150),
                        cursorColor: kBlack,
                        keyboardType: TextInputType.number,
                        enableActiveFill: true,

                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape
                              .box, // شكل المربع: box أو underline أو circle
                          borderRadius: BorderRadius.circular(
                            12,
                          ), // تدوير الحواف
                          fieldHeight: 63, // ارتفاع المربع
                          fieldWidth: 67, // عرض المربع
                          activeColor: kGrey3, // لون حدود الحقل المختار
                          inactiveColor: kGrey3, // لون حدود الحقل الغير محدد
                          selectedColor: kGrey3, // لون حدود المربع عند اختياره
                          activeFillColor: kWhite, // لون تعبئة المربع النشط
                          inactiveFillColor:
                              Colors.white, // لون تعبئة المربع الغير نشط
                          selectedFillColor: kWhite, // لون التعبئة عند التحديد
                        ),

                        onChanged: (value) {},
                        onCompleted: (value) {},
                      ),
                    ),
                    Gap(20),
                    CustomElevatedButton(
                      onpressed: () {},
                      title: 'Continue ',
                      backgroundColor: kBlack,
                      foregroundColor: kWhite,
                    ),
                  ],
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didn’t receive the OTP?',
                      style: TextStyle(fontSize: 14, color: kGrey2),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend.',
                        style: TextStyle(fontSize: 14, color: kBlack),
                      ),
                    ),
                  ],
                ),
                Gap(150),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
