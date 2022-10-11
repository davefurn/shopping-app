import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FrontButton extends StatelessWidget {
  final double? size;
  final String text;
  final double? width;
  final Color? colors;
  final Color? textcolor;
  final VoidCallback func;
  const FrontButton(
      {Key? key,
      this.text = "SIGN IN",
      this.width = 5,
      this.size = 20,
      this.colors = Colors.white,
      this.textcolor = Colors.white60, required this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: GoogleFonts.rubik(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: textcolor,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          SvgPicture.asset(
            "assets/svgs/forward-arrow.svg",
            color: colors,
            width: size,
            height: size,
          ),
        ],
      ),
    );
  }
}
