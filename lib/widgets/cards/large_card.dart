import 'package:flutter/material.dart';

import '../../constants/constant.dart';
import '../texts/heading_text.dart';

class LargeCard extends StatelessWidget {
  const LargeCard({
    required this.onTap,
    required this.title,
    required this.imgPath,
    required this.description,

    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final String title;
  final String imgPath;
  final String description;



  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: size.width*0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width*0.8,
                height: size.height*0.45,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover),
                ),
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.0, 0.9, 1],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                     Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Heading(text: title,textColor: Colors.white,),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20,top: 10),
                      color: kColor,
                      width: 50,
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: kColor.withOpacity(0.4),
                        borderRadius:  BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                      margin: const EdgeInsets.only(top: 10),
                      width: size.width*0.8,
                      height: 90,
                      child:  Text(description,style: TextStyle(color: Colors.white,fontSize: 12),maxLines: 3, overflow: TextOverflow.ellipsis,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
