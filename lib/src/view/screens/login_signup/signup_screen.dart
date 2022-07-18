import 'package:flutter/material.dart';
import 'package:letsgo/src/view/screens/login_signup/login_screen.dart';
import 'package:letsgo/widgets/custom_page_route.dart';

import '../../../../constants/constant.dart';
import '../../../../widgets/buttons/button.dart';
import '../../../../widgets/textfields/mytextfield.dart';
import '../../../../widgets/textfields/password_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                          'images/onboard_bg2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: size.width/2,
                        child:  InkWell(
                          onTap: (){
                            Navigator.pushReplacement(context, CustomPageRoute( child: const LoginScreen(),num: 0));
                          },
                          child: const Center(child: Text("Log in",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 2.0, color: kColor),
                          ),
                        ),
                        height: 50,
                        width: size.width/2,
                        child: InkWell(
                          onTap: (){},
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
                  const MyTextField(hintText: "Name"),
                  const SizedBox(height: 20,),
                  const MyTextField(hintText: "Email"),
                  const SizedBox(height: 20,),
                  PasswordTextField(hintText: "Password"),
                  const SizedBox(height: 20,),
                  MyButton(onPressed: (){}, text: "Sign Up", textColor: Colors.white, buttonColor: kColor, height: 50,width: size.width,),
                  const SizedBox(height: 20,),
                   SizedBox(
                    width: size.width,
                    child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'By clicking sign up, you will create an account and agree to our ',style: TextStyle(color: Colors.grey,fontSize: 12)),
                          TextSpan(
                            text: 'Terms of Services',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                          ),
                          TextSpan(text: ' and ',style: TextStyle(color: Colors.grey)),
                          TextSpan(
                            text: 'Privacy Policy.',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
