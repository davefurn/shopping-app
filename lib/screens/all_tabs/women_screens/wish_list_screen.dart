import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/constants/wishlist_product.dart';
import 'package:shopping_app/widgets/adaptable_height_button.dart';

import '../../../widgets/app_large_text.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/back_button.dart';
import 'details_wishlist.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,bottom: 5, top: 8),
                    child: BacksButton(
                      func: () => Navigator.pop(context),
                      width: 12,
                      size: 24,
                      colors: Colors.black,
                      text: 'WISHLISTS',
                      textcolor: Colors.grey,
                    ),
                  ),
                ),
               const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15,right: 15),
                    child: ButtonWidget2(
                      backgroundcolor: Colors.black,
                      text: "Edit",
                      textColor: Colors.white,
                      width: 80,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        products.length.toString(),
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Items",
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SvgPicture.asset(
                        "assets/svgs/adjust-horizontal-svgrepo-com.svg",
                        width: 24,
                        height: 24,
                      ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 15),
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (overscroll) {
                overscroll.disallowIndicator();
                return true;
              },
                  child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 0.7),
                    itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => DetailsScreen(
                                    product: products[index],
                                  )))),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;

  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.only(left:8.0, right: 8, top: 8,bottom: 0,),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Stack(
                    children: [
                      BlurHash(
                          imageFit: BoxFit.cover,
                          hash: product.hash,
                          image: product.image,
                          errorBuilder: (context, url, error) =>
                              BlurHash(hash: product.hash)),
                      const Positioned(
                        bottom: 10,
                        right: 35,
                        child: ButtonWidget2(
                          backgroundcolor: Colors.black54,
                          text: "CHOOSE A SIZE",
                          textColor: Colors.white,
                          width: 100,
                          textSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AppLargeText(
                  text: product.title,
                  size: 20,
                  color: const Color.fromARGB(255, 83, 82, 82),
                ),
                AppText(text: product.price, size: 20, color: Colors.black)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
