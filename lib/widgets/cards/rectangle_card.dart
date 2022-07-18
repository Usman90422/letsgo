import 'package:flutter/material.dart';

class RectangleCard extends StatelessWidget {
  const RectangleCard({
    Key? key,
    required this.imagePath,
    required this.headingText,
    required this.subHeadingText,
    required this.onTap,
  }) : super(key: key);


  final String imagePath;
  final String headingText;
  final VoidCallback onTap;
  final String subHeadingText;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.only(left: 10,bottom: 10),
        height: size.height*0.25,
        width: size.width*0.35,
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(headingText,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            Text(subHeadingText,style: const TextStyle(fontSize: 15,color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
