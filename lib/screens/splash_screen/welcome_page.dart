import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/widgets/app_large_text.dart';
import 'package:shopping_app/widgets/app_text.dart';
import 'package:shopping_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
 const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "1111.jpg",
    "edit2_onboarding_auto_x2_colored_toned_light_ai(1).jpg",
    "edit3_onboarding_auto_x2_colored_toned_light_ai(1).jpg",
  ];
  List texts = [
    "Explore Fashion",
    "Select What You Love",
    "Be The Real You",
  ];
  List smallTexts = [
    "Explore the 2022's hottest fashion, jewellery, accessories and more...",
    "Exclusively curated selection of top brands in the palm of your hand...",
    "It brings you the latest trends and products from all over the world..."
  ];
  List colors = [
    Colors.black,
    Colors.orange.withOpacity(0.5),
    const Color(0xffc4dcff),
  ];
  List colorsOpacity = [
    Colors.black.withOpacity(0.2),
     Colors.orange.withOpacity(0.2) ,
    const Color(0xffc4dcff).withOpacity(0.2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return SafeArea(
              child: Column(
                
                children: [
                  Stack(children: [
                    Container(
                      width: double.maxFinite,
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/images/${images[index]}"),
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
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(right : 2,),
                        width: index == indexDots ? 25 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots ? colors[index] : colorsOpacity[index],
                        ),
                        
                      );
                    }),
                  ),
                  const SizedBox(height: 50,),
                  AppLargeText(
                    text: texts[index],
                    size: 40,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 250,
                    child: AppText(
                      text: smallTexts[index],
                      size: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  ResponsiveButton(
                    width: 30,
                    colors: colors[index],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
