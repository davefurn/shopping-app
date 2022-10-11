import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/constants/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  final double? width;
  final Color backgroundcolor;
  final String text;
  final Color textColor;
  final VoidCallback ontap;
  const ButtonWidget({
    Key? key,
    required this.backgroundcolor,
    required this.text,
    required this.textColor,
    required this.width, required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      onTap: ontap,
      child: Container( 
        width: width,
        height: MediaQuery.of(context).size.height / 16,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.mainColor),
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.rubik(
              fontWeight: FontWeight.w500,
              color: textColor,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
