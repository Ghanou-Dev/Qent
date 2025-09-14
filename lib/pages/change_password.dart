import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qent/constants/const.dart';
import 'package:qent/widgets/custom_elevated_button.dart';
import 'package:qent/widgets/custom_pin_code_fields.dart';
import 'package:qent/widgets/custom_text_field.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  static const String pageRoute = 'changePassword';

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
                Gap(150),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Create new password',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: kBlack,
                      ),
                    ),
                    Gap(10),
                    Text(
                      'Enter the code we sent to your email',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: kGrey2,
                      ),
                    ),

                    Gap(10),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CustomPinCodeFields(length: 4),
                    ),
                    Gap(10),
                    CustomTextField(hint: 'Password', isPassword: false),
                    Gap(10),
                    CustomTextField(
                      hint: 'Confirm Password',
                      isPassword: false,
                    ),
                    Gap(20),
                    CustomElevatedButton(
                      onpressed: () {},
                      title: 'Continue ',
                      backgroundColor: kBlack,
                      foregroundColor: kWhite,
                    ),
                    Gap(10),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Return to sing in',
                        style: TextStyle(fontSize: 14, color: kBlack),
                      ),
                    ),
                  ],
                ),
                Gap(70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create a',
                      style: TextStyle(fontSize: 14, color: kGrey2),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'New account',
                        style: TextStyle(fontSize: 14, color: kBlack),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
