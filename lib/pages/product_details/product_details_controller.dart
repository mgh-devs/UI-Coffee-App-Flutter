import 'package:coffee_app/core/constants/images/images.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController{
  List<String> icons = [
    MyImage.milk,
    MyImage.bike,
    MyImage.bean,
  ];

  List<String> sizes = [
    'S',
    'M',
    'L',
  ];
}