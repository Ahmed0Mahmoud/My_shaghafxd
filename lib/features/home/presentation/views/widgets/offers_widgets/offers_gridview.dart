import 'package:flutter/material.dart';

import 'offer_card.dart';

class OffersGridview extends StatelessWidget {
  const OffersGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.9, // Adjust aspect ratio as needed
      ),
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return OfferCard();
        },
        childCount: 10, // Specify the number of items
      ),
    );
  }
}
