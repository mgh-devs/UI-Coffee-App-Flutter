import 'package:coffee_app/pages/home/home_page.dart';
import 'package:coffee_app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => SplashPage(),
          transition: Transition.downToUp,
          transitionDuration: const Duration(milliseconds: 300),
        ),
        GetPage(
          name: '/home',
          page: () => HomePage(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 220),
        ),
      ],
    );
  }
}
