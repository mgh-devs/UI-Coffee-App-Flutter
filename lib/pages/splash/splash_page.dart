import 'package:coffee_app/core/constants/colors/colors.dart';
import 'package:coffee_app/core/constants/images/images.dart';
import 'package:coffee_app/core/extensions/widget_ex.dart';
import 'package:coffee_app/core/widgets/custom_btn.dart';
import 'package:coffee_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetResponsiveView {
  SplashPage({super.key});

  @override
  Widget phone() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            reverse: true,
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  MyImage.coffee1,
                  width: screen.width,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 111,
                )
              ],
            ).getSize(width: screen.width),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Show(
                'Fall in Love with Coffee in Blissful Delight!',
                size: 32,
                textOverflow: TextOverflow.visible,
              ),
              const SizedBox(
                height: 7,
              ),
              const Show(
                'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                size: 14,
                color: MyColors.subtitleColor,
                textOverflow: TextOverflow.visible,
              ),
              const SizedBox(
                height: 35,
              ),
              CustomBTN(
                onTap: () {
                  Get.toNamed('/home');
                },
              ),
            ],
          )
              .getSize(
                width: screen.width - 24 - 24,
              )
              .center()
              .marginOnly(bottom: 24),
        ],
      ),
    );
  }
}
