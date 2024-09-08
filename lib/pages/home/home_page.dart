import 'package:coffee_app/core/constants/colors/colors.dart';
import 'package:coffee_app/core/constants/images/images.dart';
import 'package:coffee_app/core/extensions/widget_ex.dart';
import 'package:coffee_app/core/widgets/custom_text.dart';
import 'package:coffee_app/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:typewritertext/typewritertext.dart';
import 'package:typing_text_animation/typing_text_animation.dart';

import '../product_details/product_details_page.dart';

class HomePage extends GetResponsiveView<HomeController> {
  HomePage({super.key}) {
    Get.put(HomeController());
  }

  @override
  Widget phone() {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: Stack(
        children: [
          //scroll part
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 430,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 99 - 34),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: List.generate(controller.coffees.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(
                            () => ProductDetailsPage(
                              coffee: controller.coffees[index],
                            ),
                            transition: Transition.downToUp,
                            duration: const Duration(milliseconds: 250),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 8,
                          ),
                          width: 156,
                          height: 238,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: MyColors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //image
                              Hero(
                                tag: controller.coffees[index].name,
                                child: Container(
                                  width: 140,
                                  height: 128,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          controller.coffees[index].image),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        IconlyBold.star,
                                        color: Colors.yellow,
                                        size: 12,
                                      ),
                                      Show(
                                        '4.8',
                                        fontWeight: FontWeight.bold,
                                        size: 8,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //title
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Show(
                                        controller.coffees[index].name,
                                        size: 16,
                                        color: Colors.black,
                                      ),
                                      Show(
                                        controller.coffees[index].type,
                                        size: 12,
                                        color: MyColors.subtitleColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              //price and add btn
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Show(
                                    "\$ ${controller.coffees[index].price}",
                                    size: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  //add btn
                                  Container(
                                    width: 32,
                                    height: 32,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: MyColors.c01,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      size: 20,
                                      color: MyColors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ).getSize(width: screen.width),
          ),
          //colors
          Column(
            children: [
              Container(
                width: screen.width,
                height: 280,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                      MyColors.c03,
                      MyColors.blackForGradient,
                    ])),
              ),
              Container(
                color: MyColors.backgroundColor,
                height: 144,
              ),
            ],
          ),
          //things
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Show(
                        'Location',
                        color: MyColors.subtitleColor,
                        size: 12,
                      ),
                      Row(
                        children: [
                          Show(
                            'Bilzen, Tanjungbalai',
                            color: MyColors.white,
                            size: 14,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: MyColors.white,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  //search box
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    height: 52,
                    width: screen.width - 52 - 24 - 24 - 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: MyColors.searchBoxColor,
                    ),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          IconlyLight.search,
                          color: MyColors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Show('Search Coffee'),
                      ],
                    ),
                  ),
                  //filter btn
                  Container(
                    width: 52,
                    height: 52,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: MyColors.c01,
                    ),
                    child: const Icon(
                      IconlyLight.filter,
                      size: 20,
                      color: MyColors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 140,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(MyImage.banner), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 26,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xffed5151),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Show(
                            'Promo',
                            size: 14,
                          ),
                        ),
                      ],
                    ).marginSymmetric(
                      vertical: 12,
                      horizontal: 22,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: 180,
                        child: TypeWriter.text(
                          'Buy one get one FREE',
                          duration: const Duration(milliseconds: 50),
                          style: TextStyle(
                              color: MyColors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      List.generate(controller.categories.length, (index) {
                    return Container(
                      height: 29,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: index == 0
                            ? MyColors.c01
                            : MyColors.disabledCategoryColor.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Show(
                        controller.categories[index],
                        color: index == 0
                            ? MyColors.white
                            : MyColors.subtitleColor,
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          )
              .getSize(
                width: screen.width - 24 - 24,
              )
              .center(),
          //bottom navigation bar
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )),
                width: screen.width,
                height: 99 - 34,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(4, (index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          controller.bottomNavigationbarIcons[index],
                          color: index == 0
                              ? MyColors.c01
                              : MyColors.subtitleColor,
                        ),
                        index == 0
                            ? Container(
                                margin: const EdgeInsets.only(top: 4),
                                height: 5,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: MyColors.c01,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
