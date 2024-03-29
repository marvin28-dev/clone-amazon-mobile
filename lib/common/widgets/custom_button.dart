import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;

  const CustomButton(
      {Key? key, required this.text, required this.onTap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(
          text,
          style: TextStyle(color: color == null ? Colors.white : Colors.black),
        ),
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            // ignore: deprecated_member_use
            primary: color,
            minimumSize: const Size(double.infinity, 50)));
  }
}
