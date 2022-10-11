import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/constants/app_colors.dart';

class ButtonWidget2 extends StatelessWidget {
  final double? width;
  final Color backgroundcolor;
  final String text;
  final Color textColor;
  final double? textSize;
  const ButtonWidget2({
    Key? key,
    required this.backgroundcolor,
    required this.text,
    required this.textColor,
    required this.width, this.textSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.mainColor),
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.w500,
            color: textColor,
            fontSize: textSize,
          ),
        ),
      ),
    );
  }
}
