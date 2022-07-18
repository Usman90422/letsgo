import 'package:flutter/material.dart';
import 'package:letsgo/widgets/buttons/button.dart';

import '../../constants/constant.dart';
import '../texts/heading_text.dart';

class AdCard1 extends StatelessWidget {
  const AdCard1({
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:   [
                 Heading(text: text,
                  textColor: Colors.white,
                  alignment: TextAlign.center,
                ),
                const SizedBox(height: 20),
                MyButton(onPressed: (){}, text: "Redeem", textColor: Colors.white, buttonColor: kColor, height: 50.0,width: 120.0,)
              ],
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
