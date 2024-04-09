import 'package:flutter/material.dart';
import 'package:foodordering_app/Views/splash_Screen/splash_screen.dart';
import 'package:get/get.dart';
import 'consts/consts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          //to set app bar icons color
         iconTheme: IconThemeData(
          color: darkFontGrey,
         ),
         //set elevation to 0
         elevation: 0.0, 
          backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
