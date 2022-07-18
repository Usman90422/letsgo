import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    required this.text,
    this.textColor,
    this.alignment,
    this.fontSize,
    Key? key,
  }) : super(key: key);

  final String text;
  final Color? textColor;
  final TextAlign? alignment;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return  Text(text,style:  TextStyle(fontWeight: FontWeight.bold,fontSize: fontSize ?? 18 ,color: textColor,),textAlign: alignment,);
  }
}
