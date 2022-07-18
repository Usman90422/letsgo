import 'package:flutter/material.dart';
import 'package:letsgo/constants/constant.dart';
import 'package:letsgo/widgets/buttons/button.dart';
import 'package:letsgo/widgets/textfields/mytextfield.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Forgot Password",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios,color: kColor,),onPressed: (){Navigator.pop(context);},),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: const Text("Enter your email and will send you instruction on how to reset it",textAlign: TextAlign.center,)),
              const SizedBox(height: 40,),
              const MyTextField(hintText: "Email"),
              const SizedBox(height: 20,),
              MyButton(onPressed: (){}, text: "Send", textColor: Colors.white, buttonColor: kColor, height: 50,width:  MediaQuery.of(context).size.width,),
            ],
          ),
        ),
      ),
    );
  }
}
