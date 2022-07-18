import 'package:flutter/material.dart';

class MyButton2 extends StatelessWidget {
  const MyButton2({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    this.width,
    required this.height
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final Color buttonColor;
  final  width;
  final double height;
  final Icon icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text,style: TextStyle(color: textColor,fontSize: 12),),
            icon,
          ],
        ),
        style: ElevatedButton.styleFrom(
            primary: buttonColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))),
      ),
    );
  }
}