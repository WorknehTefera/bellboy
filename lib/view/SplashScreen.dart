import 'package:bellboy/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), (() {
      Get.offAll(LoginPage());
    }));
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bellboylogo.png'),
                    scale: 1)),
          ),
        ),
      ),
    );
  }
}
