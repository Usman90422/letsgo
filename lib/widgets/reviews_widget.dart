import 'package:flutter/material.dart';

import '../constants/constant.dart';

class ReviewsWidget extends StatefulWidget {
  const ReviewsWidget({Key? key,
  required this.comment,
  required this.name,
  required this.date,
  required this.imgPath,

  }) : super(key: key);


  final String comment;
  final String name;
  final String date;
  final String imgPath;

  @override
  _ReviewsWidgetState createState() => _ReviewsWidgetState();
}

class _ReviewsWidgetState extends State<ReviewsWidget> {

  bool readMore=false;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/dummy.jpg")),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(widget.name, style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18)),
                    Text(widget.date, style: const TextStyle(fontWeight: FontWeight.normal,color: Colors.black38,fontSize: 12)),

                  ],
                ),
              ]
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.comment,
                  maxLines: readMore ? 3 : null,
                  overflow: readMore
                      ? TextOverflow.ellipsis
                      : TextOverflow.visible,
                  style: const TextStyle(color: Colors.black38,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          readMore = !readMore;
                        });
                      },
                      child: Text(
                        readMore ? "read more" : "read less",
                        style: const TextStyle(color: kColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
