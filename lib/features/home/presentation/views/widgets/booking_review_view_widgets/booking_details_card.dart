import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class BookingDetailsCard extends StatelessWidget {
  const BookingDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Booking Details',
                      style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500)
                  ),
                  SizedBox(height: 10),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.circle, color: Colors.red, size: 10),
                                SizedBox(width: 8),
                                Text('Tues, 13 Feb 2024 04:00 PM'),
                              ],
                            ),
                            SizedBox(height: 14,),
                            Row(
                              children: [
                                Icon(Icons.circle, color: Colors.red, size: 10),
                                SizedBox(width: 8),
                                Text('Tues, 13 Feb 2024 10:00 PM'),
                              ],
                            ),
                            SizedBox(height: 14,),
                            Row(
                              children: [
                                Icon(Icons.circle, color: Colors.red, size: 10),
                                SizedBox(width: 8),
                                Text('Tues, 13 Feb 2024 10:00 PM'),
                              ],
                            ),
                            SizedBox(height: 14,),
                            Row(
                              children: [
                                Icon(Icons.circle, color: Colors.red, size: 10),
                                SizedBox(width: 8),
                                Text('Tues, 13 Feb 2024 10:00 PM'),
                              ],
                            ),
                            //Expanded(child: AmenityRow(icon: Icons.chair_outlined, text: '1 Seat'))
                          ],
                        ),
                      ])
                ],
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red.withOpacity(0.33),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Change',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ));
  }
}
