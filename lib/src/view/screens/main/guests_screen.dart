import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letsgo/constants/constant.dart';
import 'package:letsgo/widgets/buttons/button.dart';
import 'package:letsgo/widgets/texts/heading_text.dart';

class Guests extends StatefulWidget {
  const Guests({Key? key}) : super(key: key);

  @override
  _GuestsState createState() => _GuestsState();
}

class _GuestsState extends State<Guests> {

  int adults=0;
  int child=0;
  int infants=0;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
     body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children:  [
                 GestureDetector(
                   onTap: (){
                     Navigator.pop(context);
                   },
                   child: const Icon(Icons.close,color: Colors.black38,),
                 ),
                 const Heading( text: 'Guests',fontSize: 30),
                 const SizedBox(height: 10),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     RichText(
                       text:const TextSpan(
                   children: <TextSpan>[
                     TextSpan(
                         text: 'Adults',
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
                     TextSpan(
                         text: '\nMale or Female',
                         style: TextStyle(color: Colors.black38)),
                   ],
                 ),
                     ),
                     SizedBox(
                       width: 100,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           GestureDetector(
                             onTap: (){
                               setState(() {
                                 if(adults>0) {
                                   adults--;
                                 }
                               });
                             },
                             child: Container(
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(color: kColor),
                               ),
                               child: const Center(
                                 child: Icon(Icons.remove,color: kColor,),
                               ),
                             ),
                           ),
                           Text("$adults",style: const TextStyle(fontWeight: FontWeight.bold),),
                           GestureDetector(
                             onTap: (){
                               setState(() {
                                 adults++;
                               });
                             },
                             child: Container(
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(color: kColor),
                               ),
                               child: const Center(
                                 child: Icon(Icons.add,color: kColor,),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
                 const Divider(thickness: 1),
                 const SizedBox(height: 10),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     RichText(
                       text:const TextSpan(
                         children: <TextSpan>[
                           TextSpan(
                               text: 'Children',
                               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
                           TextSpan(
                               text: '\nAge 2 - 12',
                               style: TextStyle(color: Colors.black38)),
                         ],
                       ),
                     ),
                     SizedBox(
                       width: 100,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           GestureDetector(
                             onTap: (){
                               setState(() {
                                 if(child>0) {
                                   child--;
                                 }
                               });
                             },
                             child: Container(
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(color: kColor),
                               ),
                               child: const Center(
                                 child: Icon(Icons.remove,color: kColor,),
                               ),
                             ),
                           ),
                           Text("$child",style: const TextStyle(fontWeight: FontWeight.bold),),
                           GestureDetector(
                             onTap: (){
                               setState(() {
                                 child++;
                               });
                             },
                             child: Container(
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(color: kColor),
                               ),
                               child: const Center(
                                 child: Icon(Icons.add,color: kColor,),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
                 const Divider(thickness: 1),
                 const SizedBox(height: 10),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     RichText(
                       text:const TextSpan(
                         children: <TextSpan>[
                           TextSpan(
                               text: 'Infants',
                               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
                           TextSpan(
                               text: '\nUnder 2',
                               style: TextStyle(color: Colors.black38)),
                         ],
                       ),
                     ),
                     SizedBox(
                       width: 100,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           GestureDetector(
                             onTap: (){
                               setState(() {
                                 if(infants>0) {
                                   infants--;
                                 }
                               });
                             },
                             child: Container(
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(color: kColor),
                               ),
                               child: const Center(
                                 child: Icon(Icons.remove,color: kColor,),
                               ),
                             ),
                           ),
                           Text("$infants",style: const TextStyle(fontWeight: FontWeight.bold),),
                           GestureDetector(
                             onTap: (){
                               setState(() {
                                 infants++;
                               });
                             },
                             child: Container(
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(color: kColor),
                               ),
                               child: const Center(
                                 child: Icon(Icons.add,color: kColor,),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
                 const Divider(thickness: 1),
               ],
             ),
             Padding(
               padding: const EdgeInsets.only(bottom: 10),
               child: MyButton(onPressed: (){}, text: "Show Result" ,textColor: Colors.white, buttonColor: kColor, height: 50,width: size.width,),
             ),
           ],
         ),
       ),
     ),
    );
  }
}
