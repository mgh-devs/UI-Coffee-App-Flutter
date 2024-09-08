import 'package:flutter/material.dart';

extension WidgetsExtensions on Widget{

  Center center(){
    return Center(
      child: this,
    );
  }

  SizedBox getSize({
    double? width,
    double? height,
}){
    return SizedBox(
      width: width,
      height: height,
      child: this,
    );
  }

}