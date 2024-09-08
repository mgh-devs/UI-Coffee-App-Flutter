import 'package:coffee_app/core/constants/images/images.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class HomeController extends GetxController {
  final List<String> categories = [
    'All Coffee',
    'Machiato',
    'Latte',
    'Americano',
    'Foo',
    'Lee',
  ];

  final List<Coffee> coffees = [
    Coffee(name: 'Mocha Fusi', type: 'Ice/Hot', price: 4.21, image: MyImage.p1),
    Coffee(
        name: 'Caffe Panna', type: 'Ice/Hot', price: 3.24, image: MyImage.p2),
    Coffee(
        name: 'Caffe Mocha', type: 'Deep Foam', price: 7.14, image: MyImage.p3),
    Coffee(
        name: 'Flat White', type: 'Espresso', price: 1.21, image: MyImage.p4),
    Coffee(name: 'Yazdi', type: 'coffee', price: 0.28, image: MyImage.p5),

    Coffee(name: 'Yazdi', type: 'coffee', price: 0.28, image: MyImage.p5),
  ];
  final List<IconData> bottomNavigationbarIcons = [
    IconlyBold.home,
    IconlyLight.heart,
    IconlyLight.bag,
    IconlyLight.notification,
  ];
}
