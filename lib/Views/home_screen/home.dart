import 'package:foodordering_app/Views/cart_screen/cart_screen.dart';
import 'package:foodordering_app/Views/category_screen/category_screen.dart';
import 'package:foodordering_app/Views/home_screen/home_screen.dart';
import 'package:foodordering_app/Views/profile_screen/profile_screen.dart';
import 'package:foodordering_app/consts/consts.dart';
import 'package:foodordering_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {

    //init home cofoodordering_app
    var controller = Get.put(HomeController());


    var navbarItem= [
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26), label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26), label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26), label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26), label: account)
    ];

    var navBody =[
     const HomeScreen(),
     const CategoryScreen(),
     const CartScreen(),
     const ProfileScreen(),
    ];

    return  Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: brownColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
      ),
    ),
  );
  }
}