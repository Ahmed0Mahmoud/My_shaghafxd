import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class ShagafLogo extends StatelessWidget {
  const ShagafLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 150),
      width: 140,
      height: 235.25,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: Assets.logoImage,
            fit: BoxFit.fill,
          )
      ),
    );
  }
}
