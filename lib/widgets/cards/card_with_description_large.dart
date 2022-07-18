import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';

class CardWithDescriptionLarge extends StatelessWidget {
  const CardWithDescriptionLarge({
    Key? key,
    required this.onTap,
    required this.imgPath,
    required this.title,
    required this.placeName,
    required this.locatedAt,
    required this.price,
    required this.reviews,
  }) : super(key: key);

  final VoidCallback onTap;
  final String imgPath;
  final String title;
  final String placeName;
  final String locatedAt;
  final String price;
  final String reviews;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                20,
              )),
              child: Stack(
                children: [
                  SizedBox(
                    height: size.height / 4,
                    width: size.width * 0.8,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child:  Image(
                          image:  AssetImage(imgPath),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                    right: 15,
                    top: 10,
                    child: LikeButton(
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
                          color: isSaved ? Colors.red : Colors.white ,
                          size: 30,
                        );
                      },
                      bubblesSize: 50,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
             Text(
              placeName,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(
              height: 2,
            ),
            SizedBox(
                width: size.width * 0.8,
                child:  Text(
                 title,
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
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
                    width: size.width * 0.6,
                    child:  Text(
                      locatedAt,
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
              "\$ $price per person",
              style: const TextStyle(fontSize: 15, color: Colors.black38),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  glowColor: Colors.amber.withOpacity(0.1),
                  itemSize: 20,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                 Text(
                 " $reviews reviews",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
