import 'package:flutter/material.dart';
import 'package:letsgo/constants/constant.dart';
import 'package:letsgo/src/view/screens/login_signup/forgot_password.dart';
import 'package:letsgo/src/view/screens/login_signup/signup_screen.dart';
import 'package:letsgo/widgets/buttons/button.dart';
import 'package:letsgo/widgets/textfields/mytextfield.dart';
import 'package:letsgo/widgets/textfields/password_textfield.dart';

import '../../../../widgets/custom_page_route.dart';
import '../main/main_screens_handler.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  height: size.height/2,
                decoration: const BoxDecoration(
                  image:  DecorationImage(
                    image: AssetImage(
                        'images/onboard_bg4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                ),
                Positioned(
                  bottom: 0,
                    child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 2.0, color: kColor),
                        ),
                      ),
                      height: 50,
                      width: size.width/2,
                      child:  InkWell(
                        onTap: (){

                        },
                        child: const Center(child: Text("Log in",style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                   Container(
                     height: 50,
                     width: size.width/2,
                     child: InkWell(
                       onTap: (){
                         Navigator.pushReplacement(context, CustomPageRoute( child: const SignUpScreen(),num: 1));
                       },
                       child: const Center(child: Text("Sign up",style: TextStyle(color: Colors.white),)),
                     ),
                   ),
                  ],
                ),),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(
                children: [
                  const MyTextField(hintText: "Email"),
                  const SizedBox(height: 20,),
                  PasswordTextField(hintText: "Password"),
                  const SizedBox(height: 20,),
                  MyButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MainScreensHandler() ));

                  }, text: "Log in", textColor: Colors.white, buttonColor: kColor, height: 50,width: size.width,),
                  const SizedBox(height: 20,),
                   InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPassword()));
                    },
                    child: const Text("Forgot Password?",style: TextStyle(color: Colors.black45),),
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

