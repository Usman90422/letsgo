import 'package:flutter/material.dart';
import 'package:letsgo/src/view/screens/landing%20screen/locations.dart';
import '../../constants/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),() async{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>   Location()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.white,
      body:  Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          color: kColor
        ),
        child: const Center(
          child: Text("Lets Go",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),)
          // SizedBox(
          //     width: size.width*0.6,
          //     child: const Image(image: AssetImage("images/logo.png",),fit: BoxFit.cover)),
        ),),
    );
  }
}
