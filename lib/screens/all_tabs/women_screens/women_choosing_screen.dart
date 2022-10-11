import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/constants/wishlist_product.dart';
import 'package:shopping_app/screens/all_tabs/women_screens/explore_winter_screen.dart';
import 'package:shopping_app/widgets/app_large_text.dart';
import 'package:shopping_app/widgets/app_text.dart';

import 'wish_list_screen.dart';

class WomenScreen extends StatefulWidget {
  const WomenScreen({Key? key}) : super(key: key);

  @override
  State<WomenScreen> createState() => _WomenScreenState();
}

class _WomenScreenState extends State<WomenScreen> {
  late Product product;
  List images = [
    "lola-rose-ZcHseJqAeEc-unsplash.jpg",
    "mohammed-hassan-fdCvrdYUJsY-unsplash.jpg",
    "lucas-mendes-5CAfhkdSsfA-unsplash.jpg",
    "chris-yang-a7rjUzR-M98-unsplash.jpg",
    "nathan-dumlao-Wr3comVZJxU-unsplash.jpg",
  ];
  List texts = ["New In", "Clothing", "Men", "Women", "Family"];
  List imagesRecoommend = [
    "https://images.unsplash.com/photo-1573766713733-18f875c7892d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MnwxMDA3OTc5fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1519011985187-444d62641929?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmxhY2slMjBoaXN0b3J5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1531923361649-96d191cf56ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ODBzJTIwZmFzaGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1467664631004-58beab1ece0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OHw0Nzk0NDF8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1614018668429-a7fd50304a1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dHVydGxlbmVja3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60",
  ];
  List imagesRecoomendHash = [
    "L15hY~Iq8wRjF\$^*8^RiMc0L_2-:",
    "LTI#orxt~qNG~p9FIotR_3%gIUof",
    "LHD[I=;_5GW?KBW9N3W@Diaf-jj]",
    "LDAv%*~BDiD*BCEgWB-pivMxS2%g",
    "LDDTOvIVElx[?^E2pwt6?^K6WCxu"
  ];
  List imagesAdsRecoommend = [
    "https://images.unsplash.com/photo-1594437339683-999a05040992?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTN8NTAzODI2Mnx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1533108344127-a586d2b02479?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8M3w0OTY3NTI5fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1582015752624-e8b1c75e3711?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c3VpdGUlMjBibGFja3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1640590647840-35acdf75c34c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHN1aXRlJTIwYmxhY2t8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60",
  ];
  List imagesAdsRecoomendHash = [
    "LaLYAtIopJoz~qbbV@WB%2WBaJWB",
    "LDHLYst74m4n00IA%\$%g%%R4IUs+",
    "L3Bg3tDi00.700%Nx]M_00NI_3xD",
    "L56[BhEz01=d%dxb9Fen5Pbb~DEg",
    "LsJ*uDRj~qxu?bj[WBozt8aejZRk"
  ];
  List textsRecommended = [
    "American armholes",
    "Black Native",
    "Flush",
    "Suites",
    "Turtle Neck",
  ];
  List prices = [
    "N39,000",
    "N40,000",
    "N40,000",
    "N40,000",
    "N40,000",
  ];
  List imagesAdsRecently = [
    "https://images.unsplash.com/photo-1620799139652-715e4d5b232d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dCUyMG5lY2slMjB0JTIwc2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1648329008114-bce0ec0b5950?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YWdiYWRhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1527628217451-b2414a1ee733?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dGVhciUyMGplYW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwc3VpdGVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1610765987208-06bbd5d2a1a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FyZGlnYW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  ];
  List imagesAdsRecentlyHash = [
    "LNPZZ75B4nMw~qjY-;adVrf5-;s.",
    "LHI\$4y-;~qE1_3IUozofDhkC9FnO",
    "LALD#_^-~U}@.n4TKP?b4T=_KjD%",
    "L35h76t756-p~CofEL%2M{WVt8ay",
    "LMJ*hv_NW9w@xUxZxvX99FIURjt6",
  ];
  List textsRecently = [
    "T neck T-Shirts",
    "Agbada",
    "tear jeans",
    "Black Suites",
    "V Neck cardigans",
  ];
  List pricesRecently = [
    "\$39",
    "\$40",
    "\$45",
    "\$40",
    "\$50",
  ];
  int offset = 0;
  int time = 800;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
                overscroll.disallowIndicator();
                return true;
              },
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverAppBar(
              actions: [
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const WishList()))),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Padding(
                  padding:const EdgeInsets.only(right: 30),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const WishList()))),
                    child:const Icon(
                      Icons.search_sharp,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
              floating: false,
              elevation: 0,
              backgroundColor: Colors.white,
              expandedHeight: 550,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        "assets/images/vladimir-yelizarov-FZCubrqYZ-0-unsplash.jpg",
                        width: double.maxFinite,
                        fit: BoxFit.cover,
                        color: Colors.black.withOpacity(0.15),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: double.maxFinite,
                        padding:
                            const EdgeInsets.only(bottom: 42, left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AppLargeText(
                              text: "Winter Collection",
                              color: Colors.white,
                              size: 46,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => const WinterScreen()))),
                                  child: const AppText(
                                    text: "DISCOVER",
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                collapseMode: CollapseMode.pin,
              ),
            ),
            NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overscroll) {
                  overscroll.disallowIndicator();
                  return true;
                },
              child: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10, top: 30, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppLargeText(text: "Categories"),
                          Row(
                            children:const [
                               AppText(
                                text: "All",
                                size: 18,
                                color: Colors.grey,
                              ),
                               SizedBox(
                                width: 5,
                              ),
                               Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    NotificationListener<OverscrollIndicatorNotification>(
                       onNotification: (overscroll) {
                    overscroll.disallowIndicator();
                    return true;
                  },
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: List.generate(images.length, (index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: SizedBox(
                                      height: 300,
                                      width: 250,
                                      child: Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/${images[index]}"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 25,
                                            left: 10,
                                            child: AppLargeText(
                                              text: texts[index],
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                              );
                            }),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10, top: 30, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppLargeText(text: "Recommended for you"),
                          Row(
                            children:const [
                               AppText(
                                text: "All",
                                size: 18,
                                color: Colors.grey,
                              ),
                               SizedBox(
                                width: 5,
                              ),
                               Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    NotificationListener<OverscrollIndicatorNotification>(
                      onNotification: (overscroll) {
                    overscroll.disallowIndicator();
                    return true;
                  },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(images.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 300,
                                      width: 250,
                                      child: BlurHash(
                                          imageFit: BoxFit.cover,
                                          hash: imagesRecoomendHash[index],
                                          image: imagesRecoommend[index],
                                          errorBuilder: (context, url, error) =>
                                              BlurHash(
                                                  hash: imagesRecoomendHash[index])),
                    
                                      // child: Image.network(
                                      //   imagesRecoommend[index],
                                      //   fit: BoxFit.cover,
                                      //   loadingBuilder: (BuildContext context,
                                      //       Widget child,
                                      //       ImageChunkEvent? loadingProgress) {
                                      //     if (loadingProgress == null) return child;
                                      //     return Center(
                                      //       child: CircularProgressIndicator(
                                      //         value: loadingProgress
                                      //                     .expectedTotalBytes !=
                                      //                 null
                                      //             ? loadingProgress
                                      //                     .cumulativeBytesLoaded /
                                      //                 loadingProgress
                                      //                     .expectedTotalBytes!
                                      //             : null,
                                      //       ),
                                      //     );
                                      //   },
                                      // ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    AppLargeText(
                                      text: textsRecommended[index],
                                      size: 24,
                                      color: const Color.fromARGB(255, 83, 82, 82),
                                    ),
                                    AppText(
                                        text: prices[index],
                                        size: 20,
                                        color: Colors.black)
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CarouselSlider.builder(
                      itemCount: imagesAdsRecoommend.length,
                      itemBuilder:
                          (BuildContext context, int index, int pageViewIndex) {
                        return Stack(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: BlurHash(
                                  imageFit: BoxFit.cover,
                                  hash: imagesAdsRecoomendHash[index],
                                  image: imagesAdsRecoommend[index],
                                  errorBuilder: (context, url, error) => BlurHash(
                                      hash: imagesAdsRecoomendHash[index])),
                            ),
                            Positioned(
                              bottom: 25,
                              right: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(5, (indexDots) {
                                  return Container(
                                    margin: const EdgeInsets.only(
                                      right: 2,
                                    ),
                                    width: index == indexDots ? 25 : 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: index == indexDots
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                  );
                                }),
                              ),
                            ),
                            Positioned(
                              top: 120,
                              left: 80,
                              right: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "20%",
                                    style: GoogleFonts.rubik(
                                      color: Colors.white,
                                      fontSize: 100,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 2,
                                  ),
                                  const AppText(
                                    text: "discount on your first order",
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      options: CarouselOptions(
                          autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                          viewportFraction: 1,
                          height: 400,
                          autoPlay: true),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10, top: 30, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppLargeText(text: "Recently Viewed"),
                          Row(
                            children:const [
                               AppText(
                                text: "All",
                                size: 18,
                                color: Colors.grey,
                              ),
                               SizedBox(
                                width: 5,
                              ),
                               Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (overscroll) {
                    overscroll.disallowIndicator();
                    return true;
                  },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(images.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 300,
                                      width: 250,
                                      child: BlurHash(
                                          imageFit: BoxFit.cover,
                                          hash: imagesAdsRecentlyHash[index],
                                          image: imagesAdsRecently[index],
                                          errorBuilder: (context, url, error) =>
                                              BlurHash(
                                                  hash:
                                                      imagesAdsRecentlyHash[index])),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    AppLargeText(
                                      text: textsRecently[index],
                                      size: 24,
                                      color: const Color.fromARGB(255, 83, 82, 82),
                                    ),
                                    AppText(
                                        text: pricesRecently[index],
                                        size: 20,
                                        color: Colors.black)
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
