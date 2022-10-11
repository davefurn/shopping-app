import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_app/constants/error_handling.dart';
import 'package:shopping_app/constants/global_variables.dart';
import 'package:shopping_app/constants/utils.dart';
import 'package:shopping_app/providers/user_provider.dart';
import 'package:shopping_app/router/custom_page_route.dart';
import 'package:shopping_app/screens/homescreen.dart';

import '../models/user.dart';
import 'package:http/http.dart' as http;

import '../screens/login_ui/login_pages/login_in.dart';

class AuthService {
  //sign up user
  void signupUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
        "",
        name,
        email,
        password,
        "",
        "",
        "",
      );

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const SuccessAlertDialog();
              });
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  //signIn user
  void signinUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/signin'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      print(res.body);
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            Provider.of<UserProvider>(context, listen: false).setUser(res.body);
            await prefs.setString(
                'x-auth-token', jsonDecode(res.body)['token']);
            Provider.of<UserProvider>(context, listen: false).setUser(res.body);
            Navigator.pushNamedAndRemoveUntil(
              context,
              "/HomeScreen",
              (route) => false,
            );
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}

class SuccessAlertDialog extends StatelessWidget {
  const SuccessAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: Icon(
                    Icons.gpp_good,
                    size: 60,
                    color: Colors.green,
                  ),
                ),
                Text(
                  "Account created\nsuccessfully",
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 1.0,
                      color: Colors.black,
                    ),
                    primary: Colors.white,

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    minimumSize: const Size(220, 60), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, customPageBuilder(HomeScreen(), 0, 1));
                  },
                  child: Text(
                    'Now Sign In',
                    style: GoogleFonts.rubik(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
