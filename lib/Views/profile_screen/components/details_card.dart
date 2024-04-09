import 'package:foodordering_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget detailsCard({width,String? count,String?title}) {
  return  Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
          "00".text.fontFamily(bold).color(darkFontGrey).size(16).white.make(),
           5.heightBox,
           "in your cart".text.color(darkFontGrey).make(),
         ],
     ).box.white.rounded.width(width).height(80).padding(EdgeInsets.all(4)).make();
        
}