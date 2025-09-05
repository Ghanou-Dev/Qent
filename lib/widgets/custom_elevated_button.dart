import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String title;
  final void Function()? onpressed;
  final Color backgroundColor;
  final Color foregroundColor;
  const CustomElevatedButton({
    super.key,
    required this.title,
    this.onpressed,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
        foregroundColor: WidgetStatePropertyAll(foregroundColor),
        fixedSize: WidgetStatePropertyAll(
          Size(MediaQuery.of(context).size.width, 62),
        ),
        side: WidgetStatePropertyAll(BorderSide(color: Colors.black)),
      ),
      onPressed: onpressed,
      child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
