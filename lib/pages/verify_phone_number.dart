// import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:high_q_paginated_drop_down/high_q_paginated_drop_down.dart';
import 'package:qent/constants/const.dart';
import 'package:qent/models/country_model.dart';
import 'package:qent/pages/confirmation.dart';
import 'package:qent/pages/home_page.dart';
import 'package:qent/widgets/custom_elevated_button.dart';
import 'package:qent/widgets/custom_text_field.dart';

class VerifyPhoneNumber extends StatefulWidget {
  const VerifyPhoneNumber({super.key});

  static const String pageRoute = 'VerifyPhoneNumber';

  @override
  State<VerifyPhoneNumber> createState() => _VerifyPhoneNumberState();
}

class _VerifyPhoneNumberState extends State<VerifyPhoneNumber> {
  String? keyNumber;
  String? number;
  TextEditingController textFieldController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //////////////////////////////////////////////////////////////////////////////
  List<Country> countries = [
    Country(dialCode: '+213', name: 'الجزائر', flag: 'assets/flags/dz.png'),
    Country(dialCode: '+20', name: 'مصر', flag: 'assets/flags/eg.png'),
    Country(dialCode: '+966', name: 'السعودية', flag: 'assets/flags/sa.png'),
    Country(dialCode: '+212', name: 'المغرب', flag: 'assets/flags/ma.png'),
  ];
  Country initCountry = Country(
    dialCode: '+213',
    name: 'الجزائر',
    flag: 'assets/flags/dz.png',
  );
  Country? selectedCountry;
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
                Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Verify your phone number',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: kBlack,
                        ),
                      ),
                      Gap(10),
                      Text(
                        'We have sent you an SMS with a code to number',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: kGrey2,
                        ),
                      ),
                      Gap(40),
                      HighQPaginatedDropdown<Country>(
                        hintText: Text('Country'),
                        backgroundDecoration: (child) => InputDecorator(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                            ), // hieght of field
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: kGrey2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: kGrey2),
                            ),
                          ),
                          child: child,
                        ),

                        searchHintText: 'Searching',
                        initialValue: MenuItemModel<Country>(
                          value: initCountry,
                          label: initCountry.name,
                          child: Row(
                            children: [
                              Image.asset(
                                initCountry.flag,
                                width: 30,
                                height: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                '${initCountry.name} ${initCountry.dialCode}',
                              ),
                            ],
                          ),
                        ),
                        items: countries.map((country) {
                          return MenuItemModel<Country>(
                            value: country,
                            label: '${country.name} (${country.dialCode})',
                            child: Row(
                              children: [
                                Image.asset(
                                  country.flag,
                                  width: 30,
                                  height: 20,
                                ),
                                SizedBox(width: 10),
                                Text('${country.name} ${country.dialCode}'),
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedCountry = value;
                          });
                        },
                      ),
                      Gap(20),
                      CustomTextField(
                        validator: (value) {
                          if (value!.isEmpty || value.length < 6) {
                            return 'Field is required!';
                          }
                          return null;
                        },
                        controller: textFieldController,
                        hint: 'Phone Number',
                        isPassword: false,
                        keyboardType: TextInputType.phone,
                      ),
                      Gap(20),
                      CustomElevatedButton(
                        onpressed: () {
                          if (formKey.currentState!.validate()) {
                            number = textFieldController.text;
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Confirmation(
                                  keyNumber:
                                      selectedCountry?.dialCode ??
                                      initCountry.dialCode,
                                  number: number!,
                                ),
                              ),
                            );
                          } else {
                            debugPrint('field is empty');
                          }
                        },
                        title: 'Continue ',
                        backgroundColor: kBlack,
                        foregroundColor: kWhite,
                      ),
                      Gap(30),
                      TextButton(
                        onPressed: () {
                          Navigator.of(
                            context,
                          ).pushReplacementNamed(HomePage.pageRoute);
                        },
                        child: Text(
                          'Skip !',
                          style: TextStyle(fontSize: 16, color: kBlack),
                        ),
                      ),
                    ],
                  ),
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
