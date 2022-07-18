import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letsgo/constants/constant.dart';
import 'package:like_button/like_button.dart';

class CardWithDescription extends StatefulWidget {
  const CardWithDescription(
      {Key? key,
      required this.imagePath,
      required this.hotelName,
      required this.locatedAt,
      required this.onTap,
      required this.starText,
      required this.price,
      required this.review,
      required this.rating})
      : super(key: key);

  final String imagePath;
  final String hotelName;
  final String starText;
  final VoidCallback onTap;
  final String locatedAt;
  final String price;
  final String review;
  final String rating;

  @override
  State<CardWithDescription> createState() => _CardWithDescriptionState();
}

class _CardWithDescriptionState extends State<CardWithDescription> {
  late bool isSaved;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: widget.onTap,
        child: SizedBox(
          width: size.width * 0.4,
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
                      height: size.height / 7,
                      width: size.width,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage(widget.imagePath),
                            fit: BoxFit.cover,
                          )),
                    ),
                     Positioned(
                        right: 10,
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
                              size: 20,
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
                widget.starText,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(
                height: 2,
              ),
              SizedBox(
                  width: size.width * 0.4,
                  child: Text(
                    widget.hotelName,
                    style: const TextStyle(
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
                "\$ ${widget.price} per person",
                style: const TextStyle(fontSize: 12, color: Colors.black38),
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
      ),
    );
  }
}
