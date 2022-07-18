import 'package:flutter/material.dart';
import 'package:letsgo/constants/constant.dart';

class GuestBar extends StatefulWidget {
  const GuestBar({
    Key? key,
  }) : super(key: key);

  @override
  State<GuestBar> createState() => _GuestBarState();
}

class _GuestBarState extends State<GuestBar> {

  bool zero=false;
  bool one=false;
  bool two=false;
  bool three=false;
  bool four=false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: (){
              setState(() {
                 zero=true;
                 one=false;
                 two=false;
                 three=false;
                 four=false;

              });
            },
            child: Container(
              decoration:  BoxDecoration(
                  color: zero ? kColor :Colors.white,
                  border: Border.all(
                      color: Colors.black12
                  ),
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Center(child: Row(children:  [Text("0",style: TextStyle(color: zero ? Colors.white:Colors.black),),Icon(Icons.add,size: 15,color: zero ? Colors.white:kColor,)],)),
            )),
        GestureDetector(
            onTap: (){
              setState(() {
                zero=false;
                one=true;
                two=false;
                three=false;
                four=false;
              });
            },
            child: Container(
              decoration:   BoxDecoration(
                color: one ? kColor :Colors.white,
                border: const Border(
                  top: BorderSide(width: 1.0, color: Colors.black12),
                  bottom: BorderSide(width: 1.0, color: Colors.black12),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Center(child: Row(children:  [Text("1",style: TextStyle(color: one ? Colors.white:Colors.black),),Icon(Icons.add,size: 15,color: one ? Colors.white:kColor,)],)),
            )),
        GestureDetector(
            onTap: (){
              setState(() {
                zero=false;
                one=false;
                two=true;
                three=false;
                four=false;
              });
            },
            child: Container(
              decoration:   BoxDecoration(
                color: two ? kColor :Colors.white,
                border: const Border(
                  top: BorderSide(width: 1.0, color: Colors.black12),
                  bottom: BorderSide(width: 1.0, color: Colors.black12),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Center(child: Row(children:  [Text("2",style: TextStyle(color: two ? Colors.white:Colors.black),),Icon(Icons.add,size: 15,color: two ? Colors.white:kColor,)],)),
            )),
        GestureDetector(
            onTap: (){
           setState(() {
             zero=false;
             one=false;
             two=false;
             three=true;
             four=false;
           });
            },
            child: Container(
              decoration:   BoxDecoration(
                color: three ? kColor :Colors.white,
                border: const Border(
                  top: BorderSide(width: 1.0, color: Colors.black12),
                  bottom: BorderSide(width: 1.0, color: Colors.black12),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Center(child: Row(children:  [Text("3",style: TextStyle(color: three ? Colors.white:Colors.black),),Icon(Icons.add,size: 15,color: three ? Colors.white:kColor,)],)),
            )),
        GestureDetector(
            onTap: (){
              setState(() {
                zero=false;
                one=false;
                two=false;
                three=false;
                four=true;
            });
            },
            child: Container(
              decoration:  BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  color: four ? kColor :Colors.white,
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Center(child: Row(children:  [Text("4",style: TextStyle(color: four ? Colors.white:Colors.black),),Icon(Icons.add,size: 15,color: four ? Colors.white:kColor,)],)),
            )),

      ],
    );
  }
}
