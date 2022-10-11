import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/constants/wishlist_product.dart';

import '../../../widgets/details_wishlist_widgets/add_to_cart.dart';
import '../../../widgets/details_wishlist_widgets/color_and_Size.dart';
import '../../../widgets/details_wishlist_widgets/counter_with_fav_btn.dart';
import '../../../widgets/details_wishlist_widgets/description.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        flexibleSpace: BlurHash(hash: product.hash),
        leading: Padding(
          padding: const EdgeInsets.only(right: 14.0),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/svgs/back-arrow.svg',
              color: Colors.white,
              fit: BoxFit.cover,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/svgs/icons8-search.svg",
              color: Colors.white,
              width: 24,
              height: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/svgs/cart.svg",
             width: 24,
              height: 24,
            ),
            onPressed: () {},
            
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
                overscroll.disallowIndicator();
                return true;
              },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height,
                child: Stack(
                  children: <Widget>[
                    BlurHash(hash: product.hash),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      padding: EdgeInsets.only(
                        top: size.height * 0.12,
                        left: 20,
                        right: 20,
                      ),
                      // height: 500,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:  BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          ColorAndSize(product: product),
                          const SizedBox(height: 10),
                          Description(product: product),
                          const SizedBox(height: 10),
                          CounterWithFavBtn(
                            product: product,
                          ),
                          const SizedBox(height: 10),
                          Expanded(child: AddToCart(product: product))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                           Text(
                            "Item Selected",
                            style: GoogleFonts.rubik(color: Colors.grey),
                            
                          ),
                          Text(
                            product.title,
                            style: GoogleFonts.rubik(
                              fontSize:22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  children: [
                                     TextSpan(text: "Price\n",style: GoogleFonts.rubik(color: Colors.grey),),
                                    TextSpan(
                                      text: product.price,
                                      style: GoogleFonts.rubik(
                              fontSize:22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * .3,
                        width:  MediaQuery.of(context).size.width * .6 ,
                        decoration: const BoxDecoration(  
                          borderRadius:  BorderRadius.only(
                            topLeft: Radius.circular(70),
                            bottomLeft: Radius.circular(70),
                          ),
                        ),
                        child:  Hero(
                          tag:  "${product.id}",
                          child: ClipRRect(
                            borderRadius:const BorderRadius.only(
                              topLeft: Radius.circular(70),
                              bottomLeft: Radius.circular(70),
                            ),
                            child: BlurHash(
                              imageFit: BoxFit.cover,
                              hash: product.hash,
                              image: product.image,
                              errorBuilder: (context, url, error) =>
                                  BlurHash(hash: product.hash)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
