import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  final Color? colors;
 const ResponsiveButton({
    Key? key,
    this.width,
    this.isResponsive= false,
    this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: width,
      backgroundColor: colors,
      child: SvgPicture.asset(
        "assets/svgs/right-arrow-svgrepo-com.svg",
        color: Colors.white,
        width: 20,
      ),
    );
  }
}
