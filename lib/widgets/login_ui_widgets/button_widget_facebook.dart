import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/constants/app_colors.dart';

class ButtonWidgetFacebook extends StatelessWidget {
  final double? width;
  final Color backgroundcolor;
  final String text;
  final Color textColor;
  final Color? iconColor;
  final VoidCallback ontap;
  const ButtonWidgetFacebook({
    Key? key,
    required this.backgroundcolor,
    required this.text,
    required this.textColor,
    required this.width,
    this.iconColor = const Color(0xff3c67be), required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      
      child: Container(
        width: width,
        height: MediaQuery.of(context).size.height / 16,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.mainColor),
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.facebook_outlined,
              color: iconColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: GoogleFonts.rubik(
                fontWeight: FontWeight.w500,
                color: textColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
