import 'package:flutter/material.dart';

class WideRectangleCard extends StatelessWidget {
  const WideRectangleCard({
    Key? key,
    required this.imagePath,
    required this.destinationName,
    required this.hotels,
    required this.activities,
    required this.onTap,
  }) : super(key: key);


  final String imagePath;
  final String destinationName;
  final VoidCallback onTap;
  final String hotels;
  final String activities;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.only(left: 10,bottom: 10),
        height: size.height*0.18,
        width: size.width*0.7,
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
            Text(destinationName,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            Text("$hotels hotels - $activities activities",style: const TextStyle(fontSize: 15,color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
