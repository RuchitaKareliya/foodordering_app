import 'package:flutter/material.dart';
import 'package:foodordering_app/consts/consts.dart';
import 'package:foodordering_app/widgets_common/applogo_widget.dart';
import 'package:foodordering_app/widgets_common/bg_widget.dart';
import 'package:foodordering_app/widgets_common/custom_textfield.dart';
import 'package:foodordering_app/widgets_common/our_button.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child:Scaffold(
    resizeToAvoidBottomInset: false,
    body: Center(
      child: Column(
        children: [
            (context.screenHeight *0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(hint: nameHint,title: name),
                customTextField(hint: emailHint,title: email),
                customTextField(hint:password,title:password),
                customTextField(hint:password,title:retypePassword),
                Align(
                  alignment:Alignment.centerRight,
                  child:TextButton(onPressed: (){}, child: forgetPass.text.make())),
                  5.heightBox,
                // ourButton().box.width(context.screenWidth -50).make(),
                Row(
                  children: [
                    Checkbox(
                      checkColor: brownColor,
                      value: isCheck, 
                      onChanged: (newValue){
                        setState(() {
                          isCheck = newValue;
                        });
                      },
                    ),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                          text:const TextSpan(
                       children: [
                        TextSpan(
                          text:"I agree to the",
                          style:TextStyle(
                            fontFamily: regular,
                            color:fontGrey,
                          )),
                          TextSpan(
                          text:termAndCond,
                          style:TextStyle(
                            fontFamily: regular,
                            color:brownColor,
                          )),
                          TextSpan(
                          text:"&",
                          style:TextStyle(
                            fontFamily: regular,
                            color:fontGrey,
                          )),
                          TextSpan(
                          text:privacyPolicy,
                          style:TextStyle(
                            fontFamily: regular,
                            color:brownColor,
                          ))
                       ],
                     )),
                  ),
                 ],
                ),
                5.heightBox,
                ourButton(
                  color: isCheck == true ? brownColor : lightGrey,
                  title:signup,
                  textColor: const Color.fromARGB(225, 121, 85, 72),
                  onPress: () {})
                  .box
                  .width(context.screenWidth -50)
                  .make(),
                  10.heightBox,
                  //wrapping into gesture detector of velocity X
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      alreadyHaveAccount.text.color(fontGrey).make(),
                      login.text.color(brownColor).make().onTap(() {
                      Get.back();
                 }),   
                ],
              ),
           ],
          ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make(),
        ],
        ),
    ),
   ));
  }
}