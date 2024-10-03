import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class RateShape extends StatelessWidget {
  const RateShape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51,
      height: 22,
      decoration: BoxDecoration(
        color: Color(0xff90483d),
        borderRadius: BorderRadius.circular(20),

      ),
      child: Row(
        children: [
          Icon(Icons.star_rate_rounded,color: Colors.yellow,size: 22,),
          Text('4.7',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600,color: Colors.white),)
        ],
      ),
    );
  }
}
