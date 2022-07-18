import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letsgo/constants/constant.dart';
import 'package:letsgo/widgets/RoundTag.dart';
import 'package:letsgo/widgets/tags.dart';
import 'package:letsgo/widgets/texts/heading_text.dart';

import '../../../model/static_data.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {

  final Tag tags=Tag();
  final RoundedTag roundedTag=RoundedTag();

  bool isTapped=true;
  List tagSelected=[];


  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,top: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.close,color: Colors.grey,),
                ),
                const SizedBox(height: 10),
                const Heading(text: "Where to?",textColor: Colors.black26,fontSize: 30,),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.near_me,color: kColor,),
                        SizedBox(width: 10),
                        Text("Nearby",style: TextStyle(color: Colors.black45,fontSize: 15,fontWeight: FontWeight.w700),)
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(color: Colors.black38,height: 2,),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(Icons.location_on,color: kColor,),
                        SizedBox(width: 10),
                        Text("Anywhere",style: TextStyle(color: Colors.black45,fontSize: 15,fontWeight: FontWeight.w700),)
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(color: Colors.black38,height: 2,),
                  ],
                ),
                const SizedBox(height: 20),
                const Heading(text: "Recent",),
                const SizedBox(height: 20),
                SizedBox(
                    width: size.width*0.9,
                    child: const Text("Karnataka, India ",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),overflow:
                      TextOverflow.ellipsis,)),
                const SizedBox(height: 10),
                const Divider(color: Colors.black38,height: 2,),
                const SizedBox(height: 20),
                const Heading(text: "Popular Destinations",),
                const SizedBox(height: 20),
                // ElevatedButton(onPressed: (){
                //   for (int index=0;index<tagSelected.length;index++) {
                //     print(tagSelected[index]);
                //   }
                // }, child: const Text("show")),
                SizedBox(
                    width: size.width,
                    child: Wrap(
                      children: [
                        for (int index=0;index<tags.tagList.length;index++)
                        Tags(
                          list: tags.tagList, index: index,
                          selectedTags: (){
                            // setState(() {
                            //   tagSelected.add(tags.tagList[index]);
                            // });

                        },),
                      ],
                    )
                ),
                const SizedBox(height: 20),
                const Heading(text: "Popular Activities",),
                const SizedBox(height: 20),
                 SizedBox(
                   width: size.width,
                  height: 80,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return RoundTag(text: roundedTag.iconTitle[index], onTap: () {  }, icon: roundedTag.icon[index],);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


