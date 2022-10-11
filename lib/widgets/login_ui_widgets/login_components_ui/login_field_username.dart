import 'package:flutter/material.dart';

class Component12 extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool isPassWord;
  final bool isEmail;
  final TextEditingController controller;

  const Component12({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.isPassWord,
    required this.isEmail,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFormField(
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your $hintText';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      style: const TextStyle(color: Color(0xff192028)),
      cursorColor: const Color(0xff192028),
      textInputAction:
          isPassWord ? TextInputAction.done : TextInputAction.next,
      keyboardType:
          isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(17),
        prefixIcon: Icon(
          size: 21,
          icon,
          color: const Color(0xffb5b9bc),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 14, color: Color(0xffb5b9bc)),
        border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
         focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
      ),
    );
  }
}
