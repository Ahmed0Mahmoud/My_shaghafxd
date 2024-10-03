import 'package:flutter/material.dart';

import '../../../../../../constatnts.dart';
import '../../../../../../core/utils/styles.dart';

class AdvertismentCard extends StatelessWidget {
  const AdvertismentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 4),
      width: 275,
      height: 108,
      decoration: BoxDecoration(
        color: KgreenColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: AssetImage('assets/Frame 1042.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.circle,color: KredColor,size: 16,),
                  SizedBox(width: 4,),
                  Text('Ceramics workshop',style: Styles.textStyle13.copyWith(color: Colors.white),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.circle,color: KredColor,size: 16,),
                  SizedBox(width: 4,),
                  Text('on Friday 28 July',style: Styles.textStyle9.copyWith(color: Colors.white),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.circle,color: KredColor,size: 16,),
                  SizedBox(width: 4,),
                  Text('from 01:00 pm to 04:00 pm',style: Styles.textStyle9.copyWith(color: Colors.white),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.circle,color: KredColor,size: 16,),
                  SizedBox(width: 4,),
                  Text('350 LE for one person',style: Styles.textStyle9.copyWith(color: Colors.white),),
                ],
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  SizedBox(width: 115),
                  Text('See Details',style: Styles.textStyle6.copyWith(color: KredColor),),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
