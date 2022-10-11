import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
 final double size;
  final String text;
  final Color color;
 const AppText(
      {Key? key, required this.text,  this.color = Colors.black54,  this.size = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
       maxLines: 3,
      style: GoogleFonts.playfairDisplay(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
