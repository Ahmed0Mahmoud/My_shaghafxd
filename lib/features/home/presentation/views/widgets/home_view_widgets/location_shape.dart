import 'package:flutter/material.dart';

import '../../../../../../constatnts.dart';
import '../../../../../../core/utils/styles.dart';

class LocationShape extends StatelessWidget {
  final String title;
  const LocationShape({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 27,
      decoration: BoxDecoration(
        color: KredColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_on_outlined,color: Colors.white,),
          Text(title,style: Styles.textStyle14.copyWith(color: Colors.white),)
        ],
      ),
    );
  }
}
