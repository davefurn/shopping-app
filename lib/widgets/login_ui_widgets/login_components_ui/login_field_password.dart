import 'package:flutter/material.dart';

class Component11 extends StatefulWidget {
  final IconData icon;
  final String hintText;

  final bool isEmail;
  final TextEditingController controller;

  Component11({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.isEmail,
    required this.controller,
  }) : super(key: key);

  @override
  State<Component11> createState() => _Component11State();
}

class _Component11State extends State<Component11> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) =>
          value != null && value.length < 6 ? 'Enter min. 6 characters' : null,
      controller: widget.controller,
      style: const TextStyle(color: Color(0xff192028)),
      cursorColor: const Color(0xff192028),
      obscureText: _isObscure,
      textInputAction: TextInputAction.done,
      keyboardType:
          widget.isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(17),
        suffixIcon: IconButton(
          icon: Icon(
            _isObscure ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
          onPressed: () {
            setState(() {
              _isObscure = !_isObscure;
            });
          },
        ),
        prefixIcon: Icon(
          size: 21,
          widget.icon,
          color: const Color(0xffb5b9bc),
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(fontSize: 14, color: Color(0xffb5b9bc)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
