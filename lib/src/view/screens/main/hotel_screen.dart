import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:letsgo/constants/constant.dart';
import 'package:letsgo/src/model/static_data.dart';
import 'package:letsgo/widgets/buttons/button.dart';
import 'package:letsgo/widgets/buttons/outline_button.dart';
import 'package:letsgo/widgets/cards/room_card.dart';
import 'package:letsgo/widgets/carousel.dart';
import 'package:letsgo/widgets/reviews_widget.dart';
import 'package:letsgo/widgets/toggle_container.dart';
import 'package:like_button/like_button.dart';
import '../../../../widgets/cards/card_with_description.dart';
import '../../../../widgets/texts/heading_text.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  _HotelScreenState createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  Hotels hotels = Hotels();
  String desc =
      "The Mysore Palace, also known as Amba Vilas Palace, is a historical palace and the royal residence (house) at Mysore in the Indian state of Karnataka.  ";
  bool readMore = true;
  bool showMore = false;


  List<Icon> icons = [
    const Icon(
      Icons.bed,
      color: Colors.black45,
      size: 25,
    ),
    const Icon(
      Icons.bathtub_rounded,
      color: Colors.black45,
      size: 25,
    ),
    const Icon(
      Icons.directions_car_outlined,
      color: Colors.black45,
      size: 25,
    ),
    const Icon(
      Icons.tv_sharp,
      color: Colors.black45,
      size: 25,
    ),
    const Icon(
      Icons.restaurant,
      color: Colors.black45,
      size: 25,
    ),
    const Icon(
      Icons.directions_car_outlined,
      color: Colors.black45,
      size: 25,
    ),
    const Icon(
      Icons.tv_sharp,
      color: Colors.black45,
      size: 25,
    ),
    const Icon(
      Icons.restaurant,
      color: Colors.black45,
      size: 25,
    ),
    const Icon(
      Icons.park,
      color: Colors.black45,
      size: 25,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Carousel(imageList: hotels.imgPath),
                SafeArea(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Row(
                          children: [
                            LikeButton(
                              size: 20,
                              circleColor: const CircleColor(
                                  start: Colors.red, end: Colors.red),
                              bubblesColor: const BubblesColor(
                                dotPrimaryColor: Colors.red,
                                dotSecondaryColor: Colors.red,
                              ),
                              likeBuilder: (isSaved) {
                                return Icon(
                                  isSaved
                                      ? CupertinoIcons.heart_fill
                                      : CupertinoIcons.heart,
                                  color: isSaved ? Colors.red : Colors.white,
                                  size: 20,
                                );
                              },
                              bubblesSize: 50,
                            ),
                            const SizedBox(width: 5),
                            GestureDetector(
                              child: const Icon(
                                CupertinoIcons.share,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "5 Stars Hotel",
                        style: TextStyle(color: Colors.black38),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      for (int i = 0; i < 5; i++)
                        const Icon(
                          Icons.star,
                          color: kColor,
                          size: 20,
                        ),
                    ],
                  ),
                  const Heading(text: "The Hotel Mysore Palace", fontSize: 30),
                  const SizedBox(height: 10),
                  const SizedBox(
                      width: 50,
                      child: Divider(
                        color: Colors.black26,
                        thickness: 2,
                      )),
                  SizedBox(
                    width: size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width * 0.55,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Location",
                                style: TextStyle(color: Colors.black38),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "No.396, T.N.Pura, Main Road, Behind Lalitha Mahal Allanahalli Layout, Alanahalli Village, Mysuru India",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 10),
                              MyButton(
                                onPressed: () {},
                                text: "Explore Nearby",
                                textColor: Colors.white,
                                buttonColor: kColor,
                                height: 40,
                                border: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.3,
                          height: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 8),
                                    color: Colors.black12,
                                    spreadRadius: 1,
                                    blurRadius: 5)
                              ],
                              image: const DecorationImage(
                                image: AssetImage("images/map.jpg"),
                                fit: BoxFit.cover,
                              )),
                          child: const Icon(
                            Icons.location_on,
                            color: kColor,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Divider(
                color: Colors.black12,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kColor,
                        ),
                        child: const Text(
                          " 8.0",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 10),
                      RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Very Good',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black)),
                            TextSpan(
                                text: '\n52 reviews',
                                style: TextStyle(color: Colors.black38)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text("See reviews", style: TextStyle(color: kColor)),
                ],
              ),
            ),
            //Description
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Heading(text: "Description"),
                  SizedBox(
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("$desc",
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
                  const SizedBox(height: 10),
                  const Heading(text: "Amenities"),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: size.width * 0.7,
                          child: Wrap(
                            spacing: 30,
                            runSpacing: 10,
                            children: [
                              for (int i = 0;
                                  showMore ? i < 5 : i < icons.length;
                                  i++)
                                icons[i],
                            ],
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                showMore = !showMore;
                              });
                            },
                            child: Text(
                              showMore ? "${icons.length - 6}+" : "hide",
                              style:
                                  const TextStyle(color: kColor, fontSize: 15),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Heading(text: "Filter"),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "clear",
                          style: TextStyle(color: kColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                width: size.width,
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10, top: 10),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "Breakfast included",
                            style: TextStyle(color: Colors.black45),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Divider(
                color: Colors.black12,
                thickness: 1,
              ),
            ),
            for (int i = 0; showMore ? i <  2 :i < 4 ; i++)
            RoomCard(
                        imgList: hotels.imgPath,
                        area: "3 m",
                        onTap: () {},
                        price: "200",
                        roomTitle: "Standard Family Room",
                        beds: "1 Double Bed"),
            Center(
                child: MyOutlinedButton(
                  onPressed: (){
                    setState(() {
                      showMore=!showMore;
                    });
                  },
                  text: showMore ? "show more 5 rooms" : "show less",
                  textColor: kColor,
                  buttonColor: Colors.white,
                  height: 40,
                  width: size.width*0.5,)),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Heading(text: 'Reviews'),
            ),
            const SizedBox(height: 10),
            ReviewsWidget(comment: desc, name: "Sri Waderi", date: "March 2022", imgPath: "images/dummy.jpg"),
            const SizedBox(height: 20),
            Center(
                child: MyOutlinedButton(
                  onPressed: (){},
                  text: "show all 100 reviews",
                  textColor: kColor,
                  buttonColor: Colors.white,
                  height: 40,
                  width: size.width*0.5,)),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Heading(text: "More Options"),
                  const SizedBox(height: 10),
                  ToggleContainer(text: "Popular Attractions Nearby"),
                  ToggleContainer(text: "Hotel Policies"),
                  ToggleContainer(text: "Important Information"),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Heading(text: "Similar Hotels Nearby"),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: size.width,
                    height: size.height*0.3,
                   child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: hotels.hotelName.length,
                        itemBuilder: (context, index) {
                          return CardWithDescription(
                            imagePath: hotels.imgPath[index],
                            hotelName: hotels.hotelName[index],
                            locatedAt: hotels.location[index],
                            onTap: () {},
                            starText: hotels.starText[index],
                            price: hotels.price[index],
                            review: hotels.reviews[index],
                            rating: hotels.rating[index],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
