import 'package:flutter/material.dart';
import 'package:letsgo/src/model/static_data.dart';
import 'package:letsgo/src/view/screens/login_signup/login_screen.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {


  final staticData=StaticData();

  ScrollController _scrollController = ScrollController();

  _autoScroll() {
    Future.delayed(const Duration(seconds: 1),() async{
       _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 50000), curve: Curves.linear);
    });
  }


  resetScroll(){
    _scrollController.jumpTo(0);
    _autoScroll();
  }

    @override
  void dispose() {
    _scrollController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    WidgetsBinding.instance?.addPostFrameCallback((_) => _autoScroll());
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                foregroundDecoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.0, 0.75, 1],
                  ),
                ),
                height: size.height,
                width: size.width,
                child: const Image(
                  image: AssetImage("images/onboard_bg1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  color: Colors.black.withOpacity(0.3),
                  height: size.height,
                  width: size.width,
                  child: const Text("")),
            ],
          ),
          Positioned(
            width: size.width,
            height: size.height,
            child: Container(
              margin: const EdgeInsets.only(left: 25, right: 0, bottom: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Karnataka wonderful places",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Find the best place you  want and \n enjoy your trip with loved ones.",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: size.height / 4,
                    width: size.width,
                    child: ListView.builder(
                         controller:  _scrollController,
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: staticData.imageList.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: size.width * 0.5,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: size.width*0.6,
                                    height: size.height*0.15,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image(
                                        image: AssetImage(staticData.imageList[index]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(staticData.names[index],style: const TextStyle(color: Colors.white),),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: SizedBox(
                width: size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    InkWell(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

// ListView.builder(
//   scrollDirection: Axis.horizontal,
//   itemCount: imageList.length,
//     itemBuilder: (context,index){
//   return Padding(
//     padding: const EdgeInsets.only(right: 20),
//     child: Column(
//       children: [
//         SizedBox(
//           height: size.height*0.2,
//           width: size.width*0.4,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: Image(
//               image: AssetImage(imageList[index]),fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         Text(names[index],style: TextStyle(color: Colors.white),),
//       ],
//     ),
//   );
// }),
