import 'package:coffee_app/core/extensions/widget_ex.dart';
import 'package:coffee_app/core/widgets/custom_btn.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/pages/product_details/product_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import '../../core/constants/colors/colors.dart';
import '../../core/widgets/custom_text.dart';

class ProductDetailsPage extends GetResponsiveView<ProductDetailsController> {
  final Coffee coffee;
  ProductDetailsPage({super.key, required this.coffee}) {
    Get.put(ProductDetailsController());
  }

  @override
  Widget phone() {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: Stack(
        children: [
          //details
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 92,
                ),
                //img
                Hero(
                  tag: coffee.name,
                  child: Container(
                    width: screen.width - 24 - 24,
                    height: 202,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(coffee.image),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Show(
                          coffee.name,
                          color: MyColors.black,
                          fontWeight: FontWeight.bold,
                          size: 20,
                        ),
                        Show(
                          coffee.type,
                          color: MyColors.subtitleColor,
                          size: 12,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Row(
                          children: [
                            Icon(
                              IconlyBold.star,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            Show(
                              '4.8',
                              fontWeight: FontWeight.bold,
                              color: MyColors.black,
                              size: 16,
                            ),
                            Show(
                              ' (230)',
                              fontWeight: FontWeight.bold,
                              color: MyColors.subtitleColor,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: List.generate(3, (index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: 44,
                          height: 44,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: MyColors.disabledCategoryColor
                                .withOpacity(0.35),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            controller.icons[index],
                            width: 32,
                            height: 32,
                          ),
                        );
                      }),
                    ),
                  ],
                ),
                // line
                Container(
                  width: screen.width - 24 - 24,
                  height: 1,
                  color: MyColors.subtitleColor.withOpacity(0.5),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Show(
                            'Description',
                            color: MyColors.black,
                            size: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Show(
                            'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More',
                            color: MyColors.black,
                            textAlign: TextAlign.start,
                            size: 14,
                            textOverflow: TextOverflow.visible,
                          ),
                          const SizedBox(
                            height: 44,
                          ),
                          const Show(
                            'Size',
                            color: MyColors.black,
                            size: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(3, (index) {
                              return Container(
                                height: 41,
                                width: screen.width * 0.24,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: index == 1
                                        ? MyColors.activeSizeColor
                                        : MyColors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 1,
                                      color: index == 1
                                          ? MyColors.c01
                                          : MyColors.c04,
                                    )),
                                child: Show(
                                  controller.sizes[index],
                                  color: index == 1
                                      ? MyColors.c01
                                      : MyColors.black,
                                  size: 14,
                                ),
                              );
                            }),
                          ),
                        const SizedBox(
                          height: 100,
                        ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ).getSize(width: screen.width - 24 - 24).center(),
          ),
          //app bar and bottom navigation bar
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //ab
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                color: MyColors.backgroundColor,
                height: 80,
                width: screen.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 24,
                        color: MyColors.searchBoxColor,
                      ),
                    ),
                    const Show(
                      'Detail',
                      color: Color(0xff242424),
                      fontWeight: FontWeight.bold,
                      size: 16,
                    ),
                    const Icon(
                      IconlyLight.heart,
                      size: 24,
                      color: MyColors.searchBoxColor,
                    ),
                  ],
                ).marginSymmetric(horizontal: 30),
              ),
              //bnb
              Container(
                decoration: const BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )),
                width: screen.width,
                height: 118 - 34,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Show(
                            'Price',
                            size: 14,
                            color: Color(0xff909090),
                          ),
                          Show(
                            "\$ ${coffee.price}",
                            size: 18,
                            color: MyColors.c01,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      CustomBTN(
                        title: 'Buy Now',
                        width: screen.width * 0.5,
                      ),
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
