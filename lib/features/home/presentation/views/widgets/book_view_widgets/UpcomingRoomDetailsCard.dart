
import 'package:flutter/material.dart';
import 'package:shaghaf/constatnts.dart';

import '../../../../../../core/utils/styles.dart';
import '../rooms_view_widgets/amenity_row_widget.dart';

class UpcomingRoomDetailsCard extends StatelessWidget {
  final String roomName;
  const UpcomingRoomDetailsCard({
    super.key, required this.roomName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(roomName,style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),),
        SizedBox(height: 6,),
        Text('Cancellation Deadline: 11/2/2024',style: Styles.textStyle14.copyWith(color: Colors.red,fontWeight: FontWeight.w600),),
        SizedBox(height: 18,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: AmenityRow(icon: Icons.date_range_outlined, text: 'Date')),
            Text('17/2/2024',style: Styles.textStyle14,)
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: AmenityRow(icon: Icons.watch_later_outlined, text: 'Time')),
            Text('09:00 Am',style: Styles.textStyle14,)
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: AmenityRow(icon: Icons.chair_outlined, text: 'Seats')),
            Text('x1',style: Styles.textStyle14,)
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: AmenityRow(icon: Icons.monetization_on_outlined, text: 'Deposit')),
            Text('50.00 LE',style: Styles.textStyle14,)
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: AmenityRow(icon: Icons.monetization_on_outlined, text: 'The rest of the money')),
            Text('30.00 LE',style: Styles.textStyle14,)
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: AmenityRow(icon: Icons.coffee, text: 'Coffee')),
            Text('20.00 LE',style: Styles.textStyle14,)
          ],
        ),
        SizedBox(height: 18,),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                    color:Colors.red, // Red for selected, gray for unselected
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Extra Time',
                    style: Styles.textStyle17.copyWith(
                      color:Colors.white, // White for selected, black for unselected
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                      color:Colors.white, // Red for selected, gray for unselected
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: KredColor,
                      )
                  ),
                  child: Text(
                    'Add Items',
                    style: Styles.textStyle17.copyWith(
                      color:Colors.red, // White for selected, black for unselected
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
      ],
    );
  }
}