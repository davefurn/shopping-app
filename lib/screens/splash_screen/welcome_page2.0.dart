import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../../widgets/app_large_text.dart';
import '../../widgets/app_text.dart';
import '../../widgets/responsive_button.dart';


class WelcomePage2 extends StatefulWidget {
  const WelcomePage2({Key? key}) : super(key: key);

  @override
  State<WelcomePage2> createState() => _WelcomePage2State();
}

class _WelcomePage2State extends State<WelcomePage2> {
  final pages = [
    Container(
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.8, 1],
          colors: [
             Color(0xFFFEFEFF),
            Color(0xFFAFAFAF),
             Color(0xFF5F5F60),
            Color(0xFF101010),
          ],
        ),
      ),
      child: Column(
        children: [
          Stack(children: [
            Container(
              width: double.maxFinite,
              height: 600,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/1111.jpg"),
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 2,
                ),
                width: 25,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 2,
                ),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 2,
                ),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const AppLargeText(
            text: "Explore Fashion",
            size: 40,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 250,
            child: AppText(
              text:
                  "Explore the 2022's hottest fashion, jewellery, accessories and more...",
              size: 15,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          ResponsiveButton(
            width: 30,
            colors: Colors.black.withOpacity(0.5),
          ),
        ],
      ),
    ),
    Container(
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.8, 1],
          colors: [
            Color(0xFFFEFEFE),
            Color(0xFFFEE5E3),
            Color(0xFFFECDC7),
            Color(0xFFFEB4AC),
          ],
        ),
      ),
      child: Column(
        children: [
          Stack(children: [
            Container(
              width: double.maxFinite,
              height: 600,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/edit2_onboarding_auto_x2_colored_toned_light_ai(1).jpg"),
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 2,
                ),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFFEB4AC).withOpacity(.5),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 2,
                ),
                width: 25,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFFEB4AC),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 2,
                ),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFFEB4AC).withOpacity(0.5),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const AppLargeText(
            text: "Select What You Love",
            size: 40,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 250,
            child: AppText(
              text:
                   "Exclusively curated selection of top brands in the palm of your hand...",
              size: 15,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          ResponsiveButton(
            width: 30,
            colors: const Color(0xFFFEB4AC).withOpacity(0.5),
          ),
        ],
      ),
    ),
    Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.8, 1],
          colors: [
            Color(0xFFFEFEFE),
             Color(0xFFEAF2FE),
            Color(0xFFD7E7FE),
             Color(0xFFC3DBFE),
          ],
        ),
      ),
      child: Column(
        children: [
          Stack(children: [
            Container(
              width: double.maxFinite,
              height: 600,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/edit3_onboarding_auto_x2_colored_toned_light_ai(1).jpg"),
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 2,
                ),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffc4dcff).withOpacity(.5),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 2,
                ),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffc4dcff).withOpacity(.5),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 2,
                ),
                width: 25,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffc4dcff),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const AppLargeText(
            text: "Be The Real You",
            size: 40,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 250,
            child:  AppText(
              text:
                   "It brings you the latest trends and products from all over the world...",
              size: 15,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          ResponsiveButton(
            width: 30,
            colors: const Color(0xffc4dcff).withOpacity(0.5),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Builder(
        builder: (context) {
          return LiquidSwipe(
            enableSideReveal: false,
            pages: pages,
            enableLoop: true,
            fullTransitionValue: 880,
            // slideIconWidget: Icon(Icons.arrow_back_ios, color: Colors.white,),
            waveType: WaveType.liquidReveal,
            positionSlideIcon: 0.9,
            liquidController: LiquidController(),
          );
        }
      ),
    );
  }
}
