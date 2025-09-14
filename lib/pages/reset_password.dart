import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qent/constants/const.dart';
import 'package:qent/pages/change_password.dart';
import 'package:qent/widgets/custom_elevated_button.dart';
import 'package:qent/widgets/custom_text_field.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  static const String pageRoute = 'resetPassword';

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController _textFieldController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
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
                        'Reset your password',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: kBlack,
                        ),
                      ),
                      Gap(10),
                      Text(
                        'Enter the email address associated with your account and',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: kGrey2,
                        ),
                      ),
                      Gap(8),
                      Text(
                        'we\'ll send you a link to reset your password.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: kGrey2,
                        ),
                      ),
                      Gap(40),
                      CustomTextField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field is required !';
                          } else {
                            return null;
                          }
                        },
                        controller: _textFieldController,
                        hint: 'Email',
                        isPassword: false,
                      ),
                      Gap(20),
                      CustomElevatedButton(
                        onpressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ChangePassword(),
                              ),
                            );
                          }
                        },
                        title: 'Continue ',
                        backgroundColor: kBlack,
                        foregroundColor: kWhite,
                      ),
                      Gap(10),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Return to sing in',
                          style: TextStyle(fontSize: 14, color: kBlack),
                        ),
                      ),
                    ],
                  ),
                  Gap(150),
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
      ),
    );
  }
}
