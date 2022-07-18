
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Carousel extends StatefulWidget {
  const Carousel({this.imageList}) ;

  final imageList;

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

  int _selectedPage=0;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
            color: Colors.black.withOpacity(0.6),
            blurRadius: 1,
            spreadRadius: 1,
          )]
      ),
      height: size.height*0.4,
      child: Stack(
        children: [
          PageView(
            onPageChanged: (num){
              setState(() {
                _selectedPage=num;
              });
            },
            children: [
              for(int i=0; i<widget.imageList.length; i++)
                Container(
                  child: ClipRRect(
                    child: Image(image: AssetImage("${widget.imageList[i]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

            ],

          ),
          Positioned(
            bottom: 10,
            left: 10,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                  if(_selectedPage==_selectedPage)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        decoration:  BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("${_selectedPage+1}/${widget.imageList.length}",style: const TextStyle(color: Colors.white,fontSize: 10),)),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

