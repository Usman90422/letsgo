import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letsgo/constants/constant.dart';
import 'package:like_button/like_button.dart';

class CardWithDescriptionWide extends StatefulWidget {
  const CardWithDescriptionWide(
      {Key? key,
        required this.imageList,
        required this.hotelName,
        required this.locatedAt,
        required this.onTap,
        required this.starText,
        required this.price,
        required this.review,
        required this.rating})
      : super(key: key);

  final List imageList;
  final String hotelName;
  final String starText;
  final VoidCallback onTap;
  final String locatedAt;
  final String price;
  final String review;
  final String rating;

  @override
  State<CardWithDescriptionWide> createState() => _CardWithDescriptionWideState();
}

class _CardWithDescriptionWideState extends State<CardWithDescriptionWide> {
  late bool isSaved;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height *0.2,
              width: size.width,
              child:
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex:6,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: size.height,
                      child:  ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(image: AssetImage(widget.imageList[0]),fit: BoxFit.cover,)),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          child:   ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(image: AssetImage(widget.imageList[1]),fit: BoxFit.cover,)),
                          ),
                        ),
                          const SizedBox(height: 5),
                          Expanded(
                        flex: 4,
                        child: Stack(
                          children: [
                            Container(
                              width: size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(image: AssetImage(widget.imageList[2]),fit: BoxFit.cover,)),
                            ),
                            Container(
                              width: size.width,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(child: Text("+${widget.imageList.length-3}",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),
                            ),
                          ],
                        ),
                      )
                        ],
                      )),
                ],
              ),

            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              widget.starText,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: size.width * 0.5,
                    child: Text(
                      widget.hotelName,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
                  LikeButton(
                  size: 20,
                  circleColor:
                  const CircleColor(
                      start: Colors.red, end: Colors.red),
                  bubblesColor: const BubblesColor(
                    dotPrimaryColor: Colors.red,
                    dotSecondaryColor: Colors.red,
                  ),
                  likeBuilder: (isSaved) {
                    return Icon(
                      isSaved ?  CupertinoIcons.heart_fill : CupertinoIcons.heart,
                      color: isSaved ? Colors.red : Colors.grey ,
                      size: 25,
                    );
                  },
                  bubblesSize: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                const Icon(
                  Icons.place,
                  color: Colors.red,
                  size: 15,
                ),
                SizedBox(
                    width: size.width * 0.35,
                    child: Text(
                      widget.locatedAt,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          overflow: TextOverflow.ellipsis),
                    )),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "\$ ${widget.price} per night",
              style: const TextStyle(fontSize: 15, color: Colors.black38,fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kColor,
                  ),
                  child: Text(
                    widget.rating,
                    style: const TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
                Text(
                  widget.review,
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
