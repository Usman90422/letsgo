import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letsgo/constants/constant.dart';

class Tags extends StatefulWidget {
  const Tags({
    required this.list,
    required this.index,
    required this.selectedTags,
    Key? key,
  }) : super(key: key);

  final List<String> list;
  final int index;
  final VoidCallback selectedTags;

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {

  bool isTapped=false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.selectedTags,
      child: GestureDetector(
        onTap: (){
          setState(() {
            isTapped=!isTapped;
          });
        },
        child: Container(
          margin: const EdgeInsets.only(right: 10,bottom: 10),
          decoration:  BoxDecoration(
            color: isTapped ? kColor : Colors.white,
            border: Border.all(color: isTapped ?kColor :Colors.black26),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
          child:  Text(widget.list[widget.index],style:  TextStyle(fontSize: 12, color: isTapped ? Colors.white: Colors.black ),),
        ),
      ),
    );
  }
}
