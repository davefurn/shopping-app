// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../services/auth_services.dart';
import '../../../widgets/app_large_text.dart';
import '../../../widgets/back_button.dart';
import '../../../widgets/button_men_women.dart';
import '../../../widgets/login_ui_widgets/button_widget_facebook.dart';
import '../../../widgets/login_ui_widgets/login_components_ui/login_field_password.dart';
import '../../../widgets/login_ui_widgets/login_components_ui/login_fiels.dart';

enum Auth { signin, signup }

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool? ischecked = false;
  bool isLoading = false;
   final AuthService authService = AuthService();
  final _signInFormkey = GlobalKey<FormState>();
 
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void signinUser() {
    authService.signinUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff000000),
                    Color(0xff434343),
                  ]),
                ),
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * .025,
                            left: 10,
                          ),
                          child: BacksButton(
                            width: 5,
                            size: 22,
                            colors: Colors.white60,
                            func: () => Navigator.pop(context),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .05,
                            bottom: MediaQuery.of(context).size.width * .08,
                          ),
                          child: const AppLargeText(
                            text: "Log into\nyour account",
                            color: Colors.white,
                            size: 45,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                ),
                child: Form(
                  key: _signInFormkey,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.87,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Email ID",
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Component1(
                          icon: Icons.email_outlined,
                          hintText: 'Email ID',
                          isPassWord: false,
                          isEmail: true,
                          controller: _emailController,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Password",
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Component11(
                          icon: Icons.lock_clock_outlined,
                          hintText: 'Password',
                          isEmail: false,
                          controller: _passwordController,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: ischecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  ischecked = value;
                                  print(ischecked);
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.black,
                            ),
                            Text(
                              "Remember me",
                              style: GoogleFonts.rubik(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                          ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: isLoading 
                                    ? Colors.grey
                                    : Colors.black,
                                    textStyle: GoogleFonts.rubik(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    minimumSize: Size.fromHeight(57),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                  onPressed: () async {
                                    if (_signInFormkey.currentState!
                                            .validate() &&
                                        isLoading == false) {
                                      setState(() => isLoading = true);
                                      await Future.delayed(
                                          Duration(seconds: 2),);
                                      signinUser();
                                      setState(() => isLoading = false);
                                    }
                                  },
                                  child: isLoading
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            CircularProgressIndicator(
                                              strokeWidth: 3,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 24),
                                            Text('Please Wait....',),
                                          ],
                                        )
                                      : const Text('Log in', )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .010,
                        ),
                        ButtonWidgetFacebook(
                          backgroundcolor: const Color(0xff3c67be),
                          text: 'SIGN IN WITH FACEBOOK',
                          textColor: Colors.white,
                          width: MediaQuery.of(context).size.width * .87,
                          iconColor: Colors.white,
                          ontap: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
