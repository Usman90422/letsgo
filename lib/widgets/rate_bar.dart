import 'package:flutter/material.dart';
import 'package:letsgo/constants/constant.dart';

class RateBar extends StatefulWidget {
  const RateBar({
    Key? key,
  }) : super(key: key);

  @override
  State<RateBar> createState() => _RateBarState();
}

class _RateBarState extends State<RateBar> {

  bool star1=false;
  bool star2=false;
  bool star3=false;
  bool star4=false;
  bool star5=false;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: (){
              setState(() {
                star1=true;
                star2=false;
                star3=false;
                star4=false;
                star5=false;

              });
            },
            child: Container(
              decoration:  BoxDecoration(
                  color: star1 ? kColor :Colors.white,
                  border: Border.all(
                      color: Colors.black12
                  ),
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Center(child: Row(children:  [Text("1",style: TextStyle(color: star1 ? Colors.white:Colors.black),),Icon(Icons.star,size: 15,color: star1 ? Colors.white:kColor,)],)),
            )),
        GestureDetector(
            onTap: (){
              setState(() {
                star2=true;
                star1=false;
                star3=false;
                star4=false;
                star5=false;
              });

            },
            child: Container(
              decoration:   BoxDecoration(
                color: star2 ? kColor :Colors.white,
                border: const Border(
                  top: BorderSide(width: 1.0, color: Colors.black12),
                  bottom: BorderSide(width: 1.0, color: Colors.black12),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Center(child: Row(children:  [Text("2",style: TextStyle(color: star2 ? Colors.white:Colors.black),),Icon(Icons.star,size: 15,color: star2 ? Colors.white:kColor,)],)),
            )),
        GestureDetector(
            onTap: (){
              setState(() {
                star2=false;
                star1=false;
                star3=true;
                star4=false;
                star5=false;
              });
            },
            child: Container(
              decoration:   BoxDecoration(
                color: star3 ? kColor :Colors.white,
                border: const Border(
                  top: BorderSide(width: 1.0, color: Colors.black12),
                  bottom: BorderSide(width: 1.0, color: Colors.black12),
                  left: BorderSide(width: 1.0, color: Colors.black12),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Center(child: Row(children:  [Text("3",style: TextStyle(color: star3 ? Colors.white:Colors.black),),Icon(Icons.star,size: 15,color: star3 ? Colors.white:kColor,)],)),
            )),
        GestureDetector(
            onTap: (){
              setState(() {
                star2=false;
                star1=false;
                star3=false;
                star4=true;
                star5=false;
              });
            },
            child: Container(
              decoration:   BoxDecoration(
                color: star4 ? kColor :Colors.white,
                border: const Border(
                  top: BorderSide(width: 1.0, color: Colors.black12),
                  bottom: BorderSide(width: 1.0, color: Colors.black12),
                  left: BorderSide(width: 1.0, color: Colors.black12),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Center(child: Row(children:  [Text("4",style: TextStyle(color: star4 ? Colors.white:Colors.black),),Icon(Icons.star,size: 15,color: star4 ? Colors.white:kColor,)],)),
            )),
        GestureDetector(
            onTap: (){
                 setState(() {

                   star2=false;
                   star1=false;
                   star3=false;
                   star4=false;
                   star5=true;
                 });
            },
            child: Container(
              decoration:  BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  color: star5 ? kColor :Colors.white,
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Center(child: Row(children:  [Text("5",style: TextStyle(color: star5 ? Colors.white:Colors.black),),Icon(Icons.star,size: 15,color: star5 ? Colors.white:kColor,)],)),
            )),

      ],
    );
  }
}
