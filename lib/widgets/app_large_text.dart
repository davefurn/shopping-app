import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLargeText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  const AppLargeText(
      {Key? key, required this.text,  this.color = Colors.black,  this.size = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.rubik(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 2,
    );
  }
}
