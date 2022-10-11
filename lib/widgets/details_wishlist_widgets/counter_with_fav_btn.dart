import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/constants/wishlist_product.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  final Product product;
  const CounterWithFavBtn({
    Key? key, required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const CartCounter(),
        Container(
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: product.color,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("assets/svgs/icons8-love-100 (1).svg", color: Colors.white,),
        )
      ],
    );
  }
}