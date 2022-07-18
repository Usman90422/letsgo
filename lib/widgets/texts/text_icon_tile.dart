import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class TextIconTile extends StatefulWidget {
  const TextIconTile({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  _TextIconTileState createState() => _TextIconTileState();
}

class _TextIconTileState extends State<TextIconTile> {

  bool tickMark=false;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              tickMark=!tickMark;
            });
          },
          child: Container(
            width: size.width,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                 Text(widget.text),
                if (tickMark)
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(Icons.check,color: kColor,size: 20,),
                  ), ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black12,
          thickness: 1,
        ),
      ],
    );
  }
}
