import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../constants/constant.dart';

class ToggleContainer extends StatefulWidget {
  const ToggleContainer({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  _ToggleContainerState createState() => _ToggleContainerState();
}

class _ToggleContainerState extends State<ToggleContainer> {

  bool toggle=false;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(height: 10),
        GestureDetector(
          onTap: (){
          setState(() {
            toggle=!toggle;
          });
          },
          child: Container(
            width: size.width,
            color: Colors.transparent,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(widget.text,style: const TextStyle(fontWeight: FontWeight.w600),),
                      toggle==false?
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(CupertinoIcons.right_chevron,color: Colors.black38,size: 20,),
                      ):
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(CupertinoIcons.chevron_compact_up,color: Colors.black38,size: 20,),
                      ),
                  ],
                ),
                 Visibility(
                   visible: toggle,
                   child: SizedBox(
                       child: Center(child: const Text("Data to be added")),
                       height: 50,width: size.width
                   ),
                 ),
              ],
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
