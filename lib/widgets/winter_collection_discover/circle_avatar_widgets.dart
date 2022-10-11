import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

import '../../constants/winter_description.dart';
import '../app_text.dart';

class CircleAvatarDescription extends StatelessWidget {
  final ProductWinter productWinter;
  const CircleAvatarDescription({
    Key? key,
    required this.productWinter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: SizedBox(
              height: 75,
              width: 75,
              child: BlurHash(
                hash: productWinter.hash,
                image: productWinter.circleAvatar,
                imageFit: BoxFit.cover,
                errorBuilder: (context, url, error) =>
                    BlurHash(hash: productWinter.hash),
              ),
            ),
          ),
        ),
        AppText(text: productWinter.title, color: Colors.grey, size: 15,)
      ],
    );
  }
}
