import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:letsgo/constants/constant.dart';
import 'package:letsgo/widgets/buttons/button.dart';
import 'package:letsgo/widgets/texts/text_icon_tile.dart';
import 'package:letsgo/widgets/texts/guest_bar.dart';
import 'package:letsgo/widgets/texts/heading_text.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../../widgets/rate_bar.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  SfRangeValues _values = const SfRangeValues(0, 20.0);
  String startPrice='';
  String endPrice='';

  bool tickMark=false;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       centerTitle: true,
       leading:  GestureDetector(
         onTap: (){
           Navigator.pop(context);
         },
         child: const Icon(Icons.chevron_left,color: kColor,size: 30,),),
       title: const Text("Filter",style: TextStyle(color: Colors.black,fontSize: 15),),
       actions: [
         Padding(
           padding: const EdgeInsets.only(right: 20),
           child: Center(
             child: GestureDetector(
               onTap: (){},
               child: const Text("Reset",style: TextStyle(color: kColor,fontSize: 15),),
             ),
           ),
         )
       ],

     ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,top: 10),
          child: SizedBox(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:   [
                const Heading(text: "Sort Options"),
                const SizedBox(height: 10),
                const TextIconTile(text: "Popularity"),
                const TextIconTile(text: "Star Rating (highest first)"),
                const TextIconTile(text: "Star Rating (lowest first)"),
                const TextIconTile(text: "Best Reviewed First"),
                const TextIconTile(text: "Most Reviewed First"),
                const TextIconTile(text: "Price(lowest first"),
                const TextIconTile(text: "Price(highest first"),
                const SizedBox(height: 10),
                const Heading(text: "Price Range"),
                const SizedBox(height: 10),
                Text("\$$startPrice - \$$endPrice ",style: const TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 10),
                const Text("The average nightly price is \$45 ",style: TextStyle(color: Colors.black45),),
                const SizedBox(height: 10),
                SfRangeSlider(
                min: 0.0,
                max: 100.0,
                inactiveColor: Colors.black12,
                activeColor: kColor,
                values: _values,
                showLabels: false,
                enableTooltip: true,
                minorTicksPerInterval: 1,
                onChanged: (SfRangeValues values){
                  setState(() {
                    _values = values;
                    startPrice= values.start.toInt().toString();
                    endPrice= values.end.toInt().toString();
                  });
                },
              ),
                const SizedBox(height: 10),
                const Heading(text: "Amenities"),
                const SizedBox(height: 10),
                const TextIconTile(text: "Free Breakfast"),
                const TextIconTile(text: "Pool"),
                const TextIconTile(text: "Free Wifi"),
                const TextIconTile(text: "Free Parking"),
                const TextIconTile(text: "Pet Friendly"),
                const TextIconTile(text: "Bar"),
                const TextIconTile(text: "Child Care"),
                const SizedBox(height: 10),
                const Heading(text: "Star Rating"),
                const SizedBox(height: 10),
                const RateBar(),
                const SizedBox(height: 10),
                const Heading(text: "Guest Rating"),
                const SizedBox(height: 10),
                const GuestBar(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: MyButton(onPressed: (){}, text: "Apply Filters", textColor: Colors.white, buttonColor: kColor, height: 50,width: size.width,),
                ),
                const SizedBox(height: 20),


              ],
            ),
          ),
        ),
      ),
    );
  }


}

