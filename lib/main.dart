import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:letsgo/src/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Lets Go',
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
          fontFamily: "NotoSansJP"
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
