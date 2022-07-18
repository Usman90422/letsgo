import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    this.width,
    this.border,
    required this.height
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final Color buttonColor;
  final  width;
  final double height;
  final double? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: kColor),
      ),
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text,style: TextStyle(color: textColor,fontSize: 12),),
        style: ElevatedButton.styleFrom(
            primary: buttonColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}