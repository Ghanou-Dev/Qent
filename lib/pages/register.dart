import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:qent/constants/const.dart';
import 'package:qent/pages/verify_phone_number.dart';
import 'package:qent/widgets/custom_elevated_button.dart';
import 'package:qent/widgets/custom_pay_button.dart';
import 'package:qent/widgets/custom_text_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  static const pageRoute = 'regester';

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  void initState() {
    super.initState();
    // fix status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xfff8f8f8),
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  bool checkActive = false;
  bool secure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                Gap(30),
                Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Gap(30),
                CustomTextField(hint: 'Full Name', isPassword: false),
                Gap(15),
                CustomTextField(hint: 'Email/Phone Number', isPassword: false),
                Gap(15),
                CustomTextField(
                  hint: 'Password',
                  isPassword: secure,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        secure = !secure;
                      });
                    },
                    icon: Icon(
                      secure ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
                Gap(15),
                CustomTextField(hint: 'Country', isPassword: false),
                Gap(20),

                CustomElevatedButton(
                  onpressed: () {
                    Navigator.of(
                      context,
                    ).pushNamed(VerifyPhoneNumber.pageRoute);
                  },
                  title: 'Sing up',
                  backgroundColor: kBlack,
                  foregroundColor: kWhite,
                ),
                Gap(10),
                CustomElevatedButton(
                  onpressed: () {
                    Navigator.pop(context);
                  },
                  title: 'Login',
                  backgroundColor: kGrey4,
                  foregroundColor: kBlack,
                ),
                Gap(20),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: Divider(color: Color(0xffD9D9D9), thickness: 2),
                    ),
                    Gap(5),
                    Text(
                      'Or',
                      style: TextStyle(fontSize: 14, color: Color(0xff7f7f7f)),
                    ),
                    Gap(5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: Divider(color: Color(0xffD9D9D9), thickness: 2),
                    ),
                  ],
                ),
                Gap(20),
                CustomPayButton(
                  title: 'Apple Pay',
                  icon: FontAwesomeIcons.apple,
                  onpressed: () {},
                ),
                Gap(10),
                CustomPayButton(
                  title: 'Google Pay',
                  icon: FontAwesomeIcons.google,
                  onpressed: () {},
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 14, color: kGrey2),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login.',
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
