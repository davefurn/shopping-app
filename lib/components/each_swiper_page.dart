import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EachSwiperPage extends StatefulWidget {
  final AssetImage image;
  final String text;
  final String smallTexts;
  final Color color;
  final Color colorsOpacity;
  final int index;
  const EachSwiperPage(
      {Key? key,
      required this.image,
      required this.text,
      required this.smallTexts,
      required this.color,
      required this.colorsOpacity, required this.index})
      : super(key: key);

  @override
  State<EachSwiperPage> createState() => _EachSwiperPageState();
}

class _EachSwiperPageState extends State<EachSwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.colorsOpacity,
      child: Column(
        children: [
          Stack(children: [
            Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: widget.image,
                fit: BoxFit.cover,
              )),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: SizedBox(
                  height: 25,
                  width: 25,
                  child: SvgPicture.asset(
                    "assets/svgs/back-arrow.svg",
                    color: const Color(0xff161819),
                  ),
                ),
              ),
            ),
          ]),
          // SizedBox(
          //   height: 10,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: List.generate(3, (indexDots) {
          //     return Container(
          //       margin: const EdgeInsets.only(
          //         right: 2,
          //       ),
          //       width: index == indexDots ? 25 : 8,
          //       height: 8,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(8),
          //         color: index == indexDots ? color : colorsOpacity,
          //       ),
          //     );
          //   }),
          // ),
          // SizedBox(
          //   height: 50,
          // ),
          // AppLargeText(
          //   text: text,
          //   size: 40,
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // SizedBox(
          //   width: 250,
          //   child: AppText(
          //     text: smallTexts,
          //     size: 15,
          //   ),
          // ),
          // SizedBox(
          //   height: 45,
          // ),
          // ResponsiveButton(
          //   width: 30,
          //   colors: color,
          // ),
        ],
      ),
    );
  }
}
