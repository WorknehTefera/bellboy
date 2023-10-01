import 'package:bellboy/View/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const GetMaterialApp(
      title: "BellBoy Rider App",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
