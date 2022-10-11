import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_svg/svg.dart';
import 'package:like_button/like_button.dart';
import 'package:shopping_app/constants/models_on_selected.dart';
import 'package:shopping_app/constants/winter_description.dart';
import 'package:shopping_app/widgets/app_large_text.dart';

import '../../../widgets/app_text.dart';
import '../../../widgets/winter_collection_discover/circle_avatar_widgets.dart';
import 'on_selected_dtails.dart';
import 'wish_list_screen.dart';

class WinterScreen extends StatefulWidget {
  const WinterScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<WinterScreen> createState() => _WinterScreenState();
}

class _WinterScreenState extends State<WinterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overscroll) {
                overscroll.disallowIndicator();
                return true;
              },
              child: ListView.builder(
                  itemCount: productsWinter.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CircleAvatarDescription(
                      productWinter: productsWinter[index],
                    );
                  }),
            ),
          ),
          Flexible(
            flex: 4,
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overscroll) {
                overscroll.disallowIndicator();
                return true;
              },
              child: ListView.builder(
                  itemCount: productsWinter.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return CollectionBoxes(
                      onpressed:() => Navigator.push(
              context, MaterialPageRoute(builder: ((context) => SelectedPlaceScreen(
                recommendedModel: recommendations[index],
              )))),
                      productWinter: productsWinter[index],
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(right: 25),
        child: IconButton(
          icon: SvgPicture.asset(
            'assets/svgs/back-arrow.svg',
            color: Colors.black,
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      actions: <Widget>[
        LikeButton(
          onTap: (isLiked) => Navigator.push(
              context, MaterialPageRoute(builder: ((context) => const WishList()))),
          size: 24,
        ),
        IconButton(
          padding: const EdgeInsets.all(0),
          icon: SvgPicture.asset(
            "assets/svgs/icons8-search.svg",
            width: 24,
            height: 24,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class CollectionBoxes extends StatelessWidget {
  final ProductWinter productWinter;
  final VoidCallback onpressed;
  const CollectionBoxes({
    Key? key,
    required this.productWinter, required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 2, top: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
          onTap:onpressed,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            height: 300,
            width: 50,
            child: Stack(
              children: [
                BlurHash(
                  hash: productWinter.hash,
                  image: productWinter.image,
                  imageFit: BoxFit.cover,
                  errorBuilder: (context, url, error) =>
                      BlurHash(hash: productWinter.hash),
                ),
                Positioned(
                  bottom: 20,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        text: productWinter.title,
                        color: Colors.white,
                      ),
                      AppText(
                        text: productWinter.description,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
