import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/constants/app_colors.dart';
import 'package:shopping_app/widgets/app_large_text.dart';
import 'package:shopping_app/widgets/back_button.dart';
import 'package:shopping_app/widgets/button_men_women.dart';

import '../providers/user_provider.dart';
import 'all_tabs/root_tabs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
                "assets/images/nancy-k-WObkjtd_-VY-unsplash.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .025,
                right: MediaQuery.of(context).size.width * .025),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .030),
                    child: BacksButton(
                      width: 5,
                      size: 22,
                      colors: Colors.white60,
                      func: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                    width: MediaQuery.of(context).size.width * .88,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: "Make your\npurchases as",
                          color: AppColors.mainColor,
                          size: 40,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .030,
                        ),
                        const Divider(
                          thickness: 1,
                          color: AppColors.smallTextColor,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ButtonWidget(
                              backgroundcolor: AppColors.mainColor,
                              text: "WOMEN",
                              textColor: AppColors.textHolder,
                              width: MediaQuery.of(context).size.width * .40,
                              ontap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => const RootApp()))),
                            ),
                            ButtonWidget(
                              backgroundcolor: Colors.transparent,
                              text: "MEN",
                              textColor: AppColors.mainColor,
                              width: MediaQuery.of(context).size.width * .40,
                              ontap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
