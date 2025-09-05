import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qent/constants/const.dart';

class CustomPayButton extends StatelessWidget {
  final void Function()? onpressed;
  final String title;
  final IconData icon;
  const CustomPayButton({
    this.onpressed,
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(kGrey4),
        foregroundColor: WidgetStatePropertyAll(kBlack),
        fixedSize: WidgetStatePropertyAll(
          Size(MediaQuery.of(context).size.width, 49),
        ),
        side: WidgetStatePropertyAll(BorderSide(color: kGrey3)),
      ),

      onPressed: onpressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon),
          Gap(6),
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
