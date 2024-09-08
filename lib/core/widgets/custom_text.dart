import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors/colors.dart';

class Show extends StatelessWidget {
  final String text;
  final double? size;
  final String? font;
  final Color? color;
  final FontWeight? fontWeight;
  final TextDirection? direction;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;
  const Show(
    this.text, {
    super.key,
    this.size,
    this.font,
    this.color,
    this.direction,
    this.fontWeight,
    this.textAlign,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.sora(
        fontWeight: fontWeight,
        fontSize: size,
        color: color ?? MyColors.white,
      ),
      overflow: textOverflow ?? TextOverflow.ellipsis,
      textDirection: direction ?? TextDirection.ltr,
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}
