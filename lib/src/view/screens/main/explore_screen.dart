import 'package:flutter/material.dart';
import 'package:letsgo/constants/constant.dart';
import 'package:letsgo/src/model/static_data.dart';
import 'package:letsgo/src/view/screens/main/categories_screen.dart';
import 'package:letsgo/src/view/screens/main/discover_screen.dart';
import 'package:letsgo/widgets/cards/ad_card2.dart';
import 'package:letsgo/widgets/cards/card_with_description.dart';
import 'package:letsgo/widgets/cards/large_card.dart';
import 'package:letsgo/widgets/cards/rectangle_card.dart';
import 'package:letsgo/widgets/cards/wide_rectangle_card.dart';
import 'package:letsgo/widgets/texts/heading_text.dart';

import '../../../../widgets/cards/ad_card1.dart';
import '../../../../widgets/buttons/button_with_icon.dart';
import '../../../../widgets/cards/card_with_description_large.dart';
import '../../../../widgets/texts/heading_with_viewall.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final CategoriesCard categoriesCard = CategoriesCard();
  final Hotels hotelsCard = Hotels();
  final Activities activitiesCard = Activities();
  final Destinations destinations = Destinations();
  final Trending trending=Trending();


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/mainbg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              height: size.height * 0.4,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Explore Karnataka",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Discover and book everything \n that make you joyful ",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    MyButton2(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Discover()));
                      },
                      text: "Discover Destinations",
                      textColor: Colors.white,
                      buttonColor: kColor,
                      height: 50,
                      width: size.width * 0.55,
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: SizedBox(
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Heading(
                      text: 'Categories',
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.23,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categoriesCard.heading.length,
                          itemBuilder: (context, index) {
                            return RectangleCard(
                                imagePath: categoriesCard.images[index],
                                headingText: categoriesCard.heading[index],
                                subHeadingText:
                                categoriesCard.subHeading[index],
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CategoriesScreen()));
                                });
                          }),
                    ),
                    const SizedBox(height: 20),
                    HeadingWithViewAll(
                      heading: 'Popular Hotels',
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.3,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: hotelsCard.hotelName.length,
                          itemBuilder: (context, index) {
                            return CardWithDescription(
                              imagePath: hotelsCard.imgPath[index],
                              hotelName: hotelsCard.hotelName[index],
                              locatedAt: hotelsCard.location[index],
                              onTap: () {},
                              starText: hotelsCard.starText[index],
                              price: hotelsCard.price[index],
                              review: hotelsCard.reviews[index],
                              rating: hotelsCard.rating[index],
                            );
                          }),
                    ),
                    const SizedBox(height: 20),
                    HeadingWithViewAll(
                      heading: 'Popular Activities',
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.42,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: activitiesCard.imgPath.length,
                          itemBuilder: (context, index) {
                            return CardWithDescriptionLarge(
                                onTap: () {},
                                imgPath: activitiesCard.imgPath[index],
                                title: activitiesCard.title[index],
                                placeName: activitiesCard.placeName[index],
                                locatedAt: activitiesCard.location[index],
                                price: activitiesCard.price[index],
                                reviews: activitiesCard.reviews[index]);
                          }),
                    ),
                    HeadingWithViewAll(
                      heading: 'Top Destinations',
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.2,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: destinations.imgPath.length,
                          itemBuilder: (context, index) {
                            return WideRectangleCard(
                                imagePath: destinations.imgPath[index],
                                destinationName:
                                destinations.destination[index],
                                hotels: destinations.hotels[index],
                                activities: destinations.activities[index],
                                onTap: () {});
                          }),
                    ),
                    const SizedBox(height: 20),
                    HeadingWithViewAll(
                      heading: 'Trending Now',
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.45,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: trending.imgPath.length,
                          itemBuilder: (context, index) {
                            return LargeCard(
                              onTap: (){},
                                title: trending.title[index],
                                imgPath: trending.imgPath[index],
                                description: trending.description[index],
                            );

                          }

                      ),
                    ),
                    const SizedBox(height: 20),
                    const AdCard1(text:  'Use promo code \'Discover Earth\' to get \$100 on your first booking',
                      imgPath: "images/onboard_bg4.jpg",),
                    const SizedBox(height: 20),
                    const AdCard2(text: 'Get free credits when you complete an experience',
                      imgPath: "images/onboard_bg3.jpg",
                    ),
                    const SizedBox(height: 20),





                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


