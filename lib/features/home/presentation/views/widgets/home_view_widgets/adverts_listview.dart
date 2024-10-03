import 'package:flutter/material.dart';

import 'advertisment_card.dart';

class AdvertsListview extends StatelessWidget {
  const AdvertsListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(right: 16),
          child: AdvertismentCard(),
        );
      },itemCount: 4,scrollDirection: Axis.horizontal),
    );
  }
}
