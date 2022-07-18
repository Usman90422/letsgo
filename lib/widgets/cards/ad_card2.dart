import 'package:flutter/material.dart';
import '../texts/heading_text.dart';

class AdCard2 extends StatelessWidget {
  const AdCard2({
    required this.text,
    required this.imgPath,
    Key? key,
  }) : super(key: key);

  final String text;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          Container(
            height: size.height*0.4,
            width: size.width,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:  DecorationImage(
                  image: AssetImage(imgPath), fit: BoxFit.cover),
            ),
          ),
          Container(
            height: size.height*0.4,
            width: size.width,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.3),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:   [
                  SizedBox(
                    width: size.width*0.6,
                    child: Heading(
                      text: text,
                      fontSize: 20,
                      textColor: Colors.white,
                      alignment: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 20),
                   InkWell(
                    onTap: (){},
                    child: Text("View more",style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            top: 10,
            right: 10,
            child: Icon(Icons.close,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
