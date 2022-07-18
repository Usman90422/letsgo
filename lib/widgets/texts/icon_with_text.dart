import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({
   required this.text,
   required this.icon,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
      Icon(icon,color: Colors.black38,size: 20,),
      SizedBox(width: 5,),
      Text(text,style: const TextStyle(color: Colors.black38),),
    ],);
  }
}
