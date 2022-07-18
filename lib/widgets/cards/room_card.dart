import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letsgo/widgets/texts/icon_with_text.dart';

import '../../constants/constant.dart';
import '../buttons/button.dart';
import '../texts/heading_text.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({
    Key? key,
    required this.imgList,
    required this.area,
    required this.onTap,
    required this.price,
    required this.roomTitle,
    required this.beds,

  }) : super(key: key);


  final List imgList;
  final String area;
  final String beds;
  final String roomTitle;
  final String price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              height: 70,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imgList.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(image: AssetImage(imgList[index]),height: 100,width: 100,),),
                    );
                  }),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:   [
                const Icon(CupertinoIcons.square_grid_2x2_fill,color: Colors.black38,size: 20,),
                Text(area,style: const TextStyle(color: Colors.black38),),
                const Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child:  Text("\u{2082} ",style: TextStyle(color: Colors.black38),),
                ),
                const Text("• ",style:  TextStyle(color: Colors.black38),),

                const Icon(CupertinoIcons.bed_double_fill,color: Colors.black38,size: 20,),
                Text(" $beds",style: const TextStyle(color: Colors.black38),),
              ],
            ),
             Heading(text: roomTitle),
            const SizedBox(height: 10),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    IconWithText(icon: Icons.restaurant, text: 'BreakFast included',),
                    SizedBox(height: 10),
                    IconWithText(icon: Icons.wifi, text: 'Free wifi',),
                  ],),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    IconWithText(icon: Icons.preview_rounded, text: 'Ocean view ',),
                    SizedBox(height: 10),
                    IconWithText(icon: CupertinoIcons.drop, text: 'Hot water',),
                  ],),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    RichText(
                      text:  TextSpan(
                          text: "\$$price",
                          style: const TextStyle(
                              color: Colors.black,fontWeight: FontWeight.bold ,fontSize: 18),
                          children: const <TextSpan>[
                            TextSpan(text: ' per night',
                              style:  TextStyle(
                                  color: Colors.black38,fontSize: 15,fontWeight: FontWeight.normal),
                            )
                          ]
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text("Today's best offer!",style: TextStyle(color: Colors.black),),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: MyButton(onPressed: onTap, text: "Book Now", textColor: Colors.white, buttonColor: kColor, height: 50,width: size.width*0.35,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
