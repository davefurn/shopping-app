

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/constants/app_colors.dart';
import 'package:shopping_app/screens/login_ui/login_pages/sign_up.dart';
import 'package:shopping_app/widgets/app_large_text.dart';
import 'package:shopping_app/widgets/button_men_women.dart';

import '../../router/custom_page_route.dart';
import '../../widgets/login_ui_widgets/button_widget_facebook.dart';
import '../../widgets/login_ui_widgets/login_top_button.dart';
import 'login_pages/login_in.dart';
class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
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
                "assets/images/ussama-azam-27xbM3bF9_s-unsplash.jpg"),
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
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .030),
                    child: FrontButton(
                      width: 5,
                      size: 22,
                      colors: Colors.white60,
                      func: () {
                        Navigator.push(
                  context,
                  customPageBuilder(const Login(), 1, 0,),
                  );
                      }
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    bottom: MediaQuery.of(context).size.height * .05,
                  ),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .38,
                    width: MediaQuery.of(context).size.width * .88,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .02,
                          ),
                          child:const AppLargeText(
                            text: "Ideal store for\nyour shopping",
                            color: Colors.white,
                            size: 45,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .030,
                        ),
                        const Divider(
                          indent: 24,
                          endIndent: 24,
                          thickness: 1,
                          color: AppColors.smallTextColor,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .025,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ButtonWidget(
                                backgroundcolor:
                                    AppColors.mainColor.withOpacity(0.8),
                                text: "SIGN UP WITH EMAIL",
                                textColor: AppColors.textHolder,
                                width:
                                    MediaQuery.of(context).size.width * .87, 
                                    ontap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const Signup()))),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .010,
                              ),
                              ButtonWidgetFacebook(
                                backgroundcolor: Colors.transparent,
                                text: "CONTINUE WITH FACEBOOK",
                                textColor: Colors.white,
                                width: MediaQuery.of(context).size.width * .87, ontap: () {  },
                              ),
                            ],
                          ),
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
