import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/Frame 29956.jpg'),width: 100,height: 100,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Training room',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),),
                SizedBox(height: 8,),
                Text('inside',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400,color: Color(0xff555555)),),
              ],
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffD6D6D6)
              ),
              child: Icon(Icons.location_on_outlined,color: Colors.red),

            ),

          ],
        ),
      ),

    );
  }
}
