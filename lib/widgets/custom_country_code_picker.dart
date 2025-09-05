import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CustomCountryCodePicker extends StatelessWidget {
  const CustomCountryCodePicker({super.key});
  

  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      onChanged: (country) {
        
      },
      initialSelection: 'DZ',
      favorite: ['+213','DZ'],
      showCountryOnly: false,
      showOnlyCountryWhenClosed: false,
    );
  }
}
