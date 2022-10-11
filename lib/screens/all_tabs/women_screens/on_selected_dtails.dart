
// ignore_for_file: unrelated_type_equality_checks, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_svg/svg.dart';


import 'package:google_fonts/google_fonts.dart';


import '../../../constants/models_on_selected.dart';

class SelectedPlaceScreen extends StatelessWidget {
  final _pageController = PageController();

  final RecommendedModel recommendedModel;

  SelectedPlaceScreen({Key? key,  required this.recommendedModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          /// PageView for Image
          PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: List.generate(
              recommendedModel.images.length,
              (int index) => BlurHash(
              hash: recommendedModel.hash,
              image: recommendedModel.images[index],
              imageFit: BoxFit.cover,
              errorBuilder: (context, url, error) =>
                 BlurHash(hash: recommendedModel.hash),
            ),
            ),
          ),

          /// Custom Button
          SafeArea(
            child: Container(
              height: 57.6,
              margin: const EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 57.6,
                      width: 57.6,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: const Color(0x10000000),
                      ),
                      child:
                          SvgPicture.asset('assets/svgs/back-arrow.svg'),
                    ),
                  ),
                  const FavoriteButton()
                ],
              ),
            ),
          ),

          /// Content
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height * 0.4,
                  maxHeight: MediaQuery.of(context).size.height * 0.5),
              padding: const EdgeInsets.only(left: 28.8, bottom: 48, right: 28.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Positioned(
                            bottom: 25,
                            right: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(recommendedModel.images.length, (indexDots) {
                                return Container(
                                  margin: const EdgeInsets.only(
                                    right: 2,
                                  ),
                                  width: _pageController == indexDots ? 25 : 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: _pageController == indexDots
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                );
                              }),
                            ),
                          ),
                  Padding(
                    padding: const EdgeInsets.only(top: 19.2),
                    child: Text(
                      recommendedModel.tagLine,
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 19.2),
                    child: Text(
                      recommendedModel.description,
                      maxLines: 3,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.rubik(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FittedBox(
                            child: Text(
                              'Start from',
                              style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              '\$ ${recommendedModel.price.toString()} ',
                              style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 62.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            color: Colors.white),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: const EdgeInsets.only(left: 28.8, right: 28.8),
                            child: FittedBox(
                              child: Text(
                                'Explore Now >>',
                                style: GoogleFonts.rubik(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


/// FavoriteButton Icon
class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  FavoriteButtonState createState() => FavoriteButtonState();
}

class FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 57.6,
        width: 57.6,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.6),
          color: const Color(0x10000000),
        ),
        child: SvgPicture.asset(isFavorite
            ? 'assets/svgs/icons8-love-100 (1).svg'
            : 'assets/svgs/icons8-love-100.svg'),
      ),
      onTap: () {
        print('Sebelum klik tombol => $isFavorite');
        setState(() {
          isFavorite = !isFavorite;
          print('Setelah klik tombol => $isFavorite');
        });
      },
    );
  }
}