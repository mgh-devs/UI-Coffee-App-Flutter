import 'package:flutter/material.dart';

import '../constants/colors/colors.dart';
import 'custom_text.dart';

class CustomBTN extends StatelessWidget {
  final Color? color;
  final void Function()? onTap;
  final double? elevation;
  final String? title;
  final Color? titleColor;
  final double? height;
  final double? width;
  final bool? isEnable;
  final Color? disableColor;
  final IconData? icon;
  final Color? iconColor;

  const CustomBTN({
    super.key,
    this.isEnable,
    this.iconColor,
    this.icon,
    this.disableColor,
    this.color,
    this.height,
    this.width,
    this.onTap,
    this.titleColor,
    this.title,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56,
      width: width ,
      child: ElevatedButton(
        onPressed: (isEnable ?? true) ? onTap : null,
        style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
            elevation: WidgetStatePropertyAll(elevation),
            backgroundColor: WidgetStatePropertyAll((isEnable ?? true)
                ? (color ?? MyColors.c01)
                : (disableColor ?? MyColors.c01))),
        child: Row(
          mainAxisAlignment:
              icon == null ? MainAxisAlignment.center : MainAxisAlignment.center,
          children: [
            Show(
              title ?? 'Get Started',
              size: 16,
              color: titleColor ?? MyColors.white,
              fontWeight: FontWeight.bold,
            ),
            icon == null
                ? SizedBox()
                
                    : Icon(
                        icon,
                        color: iconColor ?? MyColors.white,
                        size: 18,
                      ),
          ],
        ),
      ),
    );
  }
}
