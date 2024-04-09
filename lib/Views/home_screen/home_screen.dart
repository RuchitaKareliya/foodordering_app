import 'package:foodordering_app/Views/home_screen/components/featured_button.dart';
import 'package:foodordering_app/consts/consts.dart';
import 'package:foodordering_app/consts/list.dart';
import 'package:foodordering_app/widgets_common/home_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height:context.screenHeight,
      child:SafeArea(
        child:Column(
      children: [
        Container(
           alignment: Alignment.center,
           height: 60,
           color: lightGrey,
           child:TextFormField(
             decoration: InputDecoration(
               border: InputBorder.none,
               suffixIcon: Icon(Icons.search),
               filled:true,
               fillColor: whiteColor,
               hintText: searchanything,
               hintStyle: TextStyle(color: textfieldGrey),
             ),
         ),
       ),
       10.heightBox,
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                //swippers brands
            // VxSwiper.builder(
            //   aspectRatio: 16 / 9,
            //   autoPlay: true,
            //   height: 150,
            //   enlargeCenterPage: true,
            //   itemCount: slidersList.length, 
            //   itemBuilder: (context,index) {
            //     return Image.asset(
            //       slidersList[index],
            //       fit: BoxFit.fitHeight,
            //      ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
            //   }),
          
              // 10.heightBox,
              // //deals buttons
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: List.generate(2, (index) => homeButtons(
              //     height: context.screenHeight * 0.15,
              //     width:context.screenWidth / 2.5,
              //     icon:  index == 0 ? icTodaysDeal :icFlashDeal,
              //     title: index == 0 ? todayDeal : flashsale
              //   )),
              // ),
            
              //2nd swipper
              // 10.heightBox,
            
              // //swippers brands
              // VxSwiper.builder(
              //   aspectRatio: 16 / 9,
              //   autoPlay: true,
              //   height: 150,
              //   enlargeCenterPage: true,
              //   itemCount: secondSlidersList.length, 
              //   itemBuilder: (context,index) {
              //     return Image.asset(
              //       slidersList[index],
              //       fit: BoxFit.fitHeight,
              //     ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
              //   }),
            
                //category buttons
                // 10.heightBox,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: List.generate(3, (index) => homeButtons(
                //     height: context.screenHeight * 0.15,
                //     width:context.screenWidth / 3.5,
                //     icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                //     title: index == 0 ? topCategories : index == 1 ? brand : topSellers,
                //   )),
                // ),
            
                //featured categories
                20.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
             
                20.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(3, (index) => Column(
                      children: [
                        featuredButton(icon: featuredImages1[index], title:featuredTitles1[index]),
                        10.heightBox,
                        featuredButton(icon: featuredImages2[index], title:featuredTitles2[index]),
                      ],
                    ),
                    ).toList(),
                  ),
                ),

                //featured product

                20.heightBox,

                Container(
                  padding: EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: const BoxDecoration(color:brownColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featuredProduct.text.white.fontFamily(bold).size(18).make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(6, (index) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(imgP1,width: 150,fit: BoxFit.cover),
                                10.heightBox,
                                "Laptop 4GB/GAGB".text.fontFamily(semibold).color(darkFontGrey).make(),
                                10.heightBox,
                                "\$600".text.color(brownColor).fontFamily(bold).size(16).make()
                              ],
                            ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(8)).make()),
                          ),
                        ),
                      ],
                   ),
                ), 

                //thired swiper
                // 20.heightBox,
                // VxSwiper.builder(
                // aspectRatio: 16 / 9,
                // autoPlay: true,
                // height: 150,
                // enlargeCenterPage: true,
                // itemCount: secondSlidersList.length, 
                // itemBuilder: (context,index) {
                //   return Image.asset(
                //     slidersList[index],
                //     fit: BoxFit.fitHeight,
                //   ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                // }),

                //all products ssections
                GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 300), 
                itemBuilder: (context, index) {
                  return Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                                Image.asset(imgP5,height: 200,width: 200,fit: BoxFit.cover),
                                const Spacer(),
                                "Laptop 4GB/GAGB".text.fontFamily(semibold).color(darkFontGrey).make(),
                                10.heightBox,
                                "\$600".text.color(brownColor).fontFamily(bold).size(16).make()
                              ],
                            ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(12)).make();
     
                })

              ],
            ),
          ),
        ),      
     ],
   )),
  );
 }
}