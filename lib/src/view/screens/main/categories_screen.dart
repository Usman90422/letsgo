import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:letsgo/constants/constant.dart';
import 'package:letsgo/src/view/screens/main/filters_screen.dart';
import 'package:letsgo/src/view/screens/main/guests_screen.dart';
import 'package:letsgo/src/view/screens/main/hotel_screen.dart';
import 'package:letsgo/widgets/cards/card_with_description_wide.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../widgets/texts/heading_text.dart';
import '../calender_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {


  List images=[
    "images/bg1.jpg",
    "images/hotels.jpg",
    "images/bg1.jpg",
    "images/mainbg.jpg",
  ];


  // void _showMaterialDialog() {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           actions: <Widget>[
  //         SfDateRangePicker(
  //         backgroundColor: Colors.white.withOpacity(0.8),
  //         todayHighlightColor: kColor,
  //         selectionMode: DateRangePickerSelectionMode.range,
  //         startRangeSelectionColor: kColor,
  //         endRangeSelectionColor:  kColor,
  //           allowViewNavigation: true,
  //         controller: dateRangePickerController,
  //         onSelectionChanged: onSelectionChanged,
  //         rangeSelectionColor: kColor.withOpacity(0.2),
  //         enablePastDates: false,
  //         headerStyle: const DateRangePickerHeaderStyle(
  //         backgroundColor: kColor,
  //         textAlign: TextAlign.center,
  //         textStyle: TextStyle(
  //         fontStyle: FontStyle.normal,
  //         fontSize: 15,
  //         letterSpacing: 2,
  //         color: Colors.white,
  //         )),
  //         monthViewSettings: const DateRangePickerMonthViewSettings(
  //         viewHeaderStyle: DateRangePickerViewHeaderStyle(
  //         backgroundColor: Colors.black,
  //         textStyle: TextStyle(fontSize: 14, color: Colors.white))),
  //         ),
  //           ],
  //         );
  //       });
  // }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/hotels.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                  width: size.width,
                  height: size.height*0.5,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4)
                  ),
                  width: size.width,
                  height: size.height*0.5,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: const Icon(Icons.chevron_left,color: Colors.white,size: 30,),),
                            GestureDetector(
                              onTap: (){
                               Navigator.push(context,MaterialPageRoute(builder: (context)=> const Filter()));
                              },
                              child: const Text("Filters",style: TextStyle(color: Colors.white),),),
                          ],
                        ),
                          const SizedBox(height: 5),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.search,color: Colors.black26,),
                                SizedBox(
                                  width: size.width*0.65,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: Colors.black26,
                                      contentPadding:  EdgeInsets.only(left: 10),
                                      hintText: "Search",
                                      hintStyle: TextStyle(color: Colors.black26,fontSize: 15),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Calendar()));
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: kColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(child:  Text("Date",style: TextStyle(color: Colors.white),)),
                                ),
                              ),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Guests()));
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(child: Text("Guests",style: TextStyle(color: Colors.white),)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Center(child: Heading(text: "Hotels",textColor: Colors.white,fontSize: 40,)),
                          SizedBox(
                              width: size.width*0.7,
                              child: const Text("Find a wonderful place everyday wherever you are",style: TextStyle(color: Colors.white,fontSize: 15,),textAlign: TextAlign.center,))
                          ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration:  const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.location_on,color: kColor,),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const SizedBox(height: 10),
                const Heading(text: 'Featured Hotel',),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: size.width,
                    child: CardWithDescriptionWide(
                      imageList: images,
                      hotelName: "Hotel Mysore Palace",
                      locatedAt: "Karnataka",
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HotelScreen()));
                      },
                      starText: "5 Star",
                      price: "200",
                      review: "very Good",
                      rating: "8.0",
                    ),
                  ),

                  const SizedBox(height: 10),
                  const Heading(text: 'All Hotels',),
                  const SizedBox(height: 10),
                  for (int i=0;i<6;i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: SizedBox(
                      width: size.width,
                      child: CardWithDescriptionWide(
                        imageList: images,
                        hotelName: "Hotel Mysore Palace",
                        locatedAt: "Karnataka",
                        onTap: () {},
                        starText: "5 Star",
                        price: "200",
                        review: "very Good",
                        rating: "8.0",
                      ),
                    ),
                  ),

              ],),
            ),

          ],
        ),
      ),
    );
  }
}
