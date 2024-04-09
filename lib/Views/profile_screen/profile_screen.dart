import 'package:foodordering_app/Views/profile_screen/components/details_card.dart';
import 'package:foodordering_app/consts/list.dart';
import 'package:foodordering_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:foodordering_app/consts/consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
          body: SafeArea(
                child: Column(
                children: [

                  //edit profile button
                  const Align(
                    alignment: Alignment.topRight,
                    child:const Icon(Icons.edit,color:whiteColor)).onTap(() {}),

                  //users details section                 
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Row(
                        children: [
                          Image.asset(imgProfile2, width: 100, fit:BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
                          10.widthBox,
                          Expanded(child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Dummy User".text.fontFamily(semibold).white.make(),
                              "customer@example.com".text.white.make(),
                            ],
                          )),
                          OutlinedButton(
                            style:OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: whiteColor,
                              )),
                            onPressed: () {},
                            child: logout.text.fontFamily(semibold).white.make()
                            ),
                        ],
                    ),
                  ),

                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      detailsCard(count: "00",title: "in your cart", width: context.screenWidth/3.4),
                      detailsCard(count: "32",title: "in your wishlist", width: context.screenWidth/3.4),
                      detailsCard(count: "675",title: "your order", width: context.screenWidth/3.4),
                    ],
                  ),

                  //Buttons Section


                  ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: lightGrey
                      );
                    },
                    itemCount: profileButtonsList.length,
                    itemBuilder: (BuildContext context, int index){
                      return ListTile(
                        leading: Image.asset(profileButtonsIcon[index],width: 22,),
                        title:"${profileButtonsList[index]}".text.fontFamily(semibold).color(darkFontGrey).make(),
                      );
                    },
                    ).box.white.rounded.margin(EdgeInsets.all(12)).padding(EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(brownColor).make(),
                ],
              ),
          ),
        ),
    );
  }
}