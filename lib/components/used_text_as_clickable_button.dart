import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAsClickable extends StatefulWidget {
  const TextAsClickable({Key? key}) : super(key: key);

  @override
  State<TextAsClickable> createState() => _TextAsClickableState();
}

class _TextAsClickableState extends State<TextAsClickable> {
   bool _isSelected = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.90,
            decoration: const BoxDecoration(
              // color: Color(0xff97c5d6),
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/modified lockscreen 4.0.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150,),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 200),
                    style: _isSelected
                        ? GoogleFonts.playfairDisplay(
                            fontSize: _isSelected ? 80 : 75,
                            fontWeight:
                                _isSelected ? FontWeight.w500 : FontWeight.w400,
                            color:  Colors.grey,
                          )
                        : GoogleFonts.playfairDisplay(
                            fontSize: _isSelected ? 80 : 75,
                            fontWeight:
                                _isSelected ? FontWeight.w500 : FontWeight.w400,
                            color: Colors.white,
                          ),
                    child: InkWell(
                      onTapDown: (T) {
                        setState(() {
                          _isSelected = true;
                        });
                      },
                      onTapUp: (T) {
                        setState(() {
                          _isSelected = false;
                        });
                      },
                      child: const Text(
                        "MEN",
                      ),
                    ),
                  ),
                  
                  AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 200),
                    style: _isSelected2
                        ? GoogleFonts.playfairDisplay(
                            fontSize: _isSelected2 ? 80 : 75,
                            fontWeight: _isSelected2
                                ? FontWeight.w500
                                : FontWeight.w400,
                            color: Colors.grey,
                          )
                        : GoogleFonts.playfairDisplay(
                            fontSize: _isSelected2 ? 80 : 75,
                            fontWeight: _isSelected2
                                ? FontWeight.w500
                                : FontWeight.w400,
                            color: Colors.white,
                          ),
                    child: InkWell(
                      onTapDown: (T) {
                        setState(() {
                          _isSelected2 = true;
                        });
                      },
                      onTapUp: (T) {
                        setState(() {
                          _isSelected2 = false;
                        });
                      },
                      onHover: (T){
                        setState(() {
                          _isSelected2 = false;
                        });
                      },
                      child: const Text(
                        "WOMEN",
                      ),
                    ),
                  ),
                  AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 200),
                    style: _isSelected3
                        ? GoogleFonts.playfairDisplay(
                            fontSize: _isSelected3 ? 80 : 75,
                            fontWeight: _isSelected3
                                ? FontWeight.w500
                                : FontWeight.w400,
                            color: Colors.grey,
                          )
                        : GoogleFonts.playfairDisplay(
                            fontSize: _isSelected3 ? 80 : 75,
                            fontWeight: _isSelected3
                                ? FontWeight.w500
                                : FontWeight.w400,
                            color: Colors.white,
                          ),
                    child: InkWell(
                      onTapDown: (T) {
                        setState(() {
                          _isSelected3 = true;
                        });
                      },
                      onTapUp: (T) {
                        setState(() {
                          _isSelected3 = false;
                        });
                      },
                      child: const Text(
                        "KIDS",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 50, right: 20),
            child: SizedBox(
              height: 25,
              width: 25,
              child: SvgPicture.asset(
                "assets/svgs/icons8-search.svg",
                color: const Color(0xff161819),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
