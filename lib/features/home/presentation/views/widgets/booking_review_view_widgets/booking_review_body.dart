import 'package:flutter/material.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_back_arrow.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_button.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/booking_review_view_widgets/room_card.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/rooms_view_widgets/amenity_row_widget.dart';

import 'booking_details_card.dart';
class BookingReviewBody extends StatelessWidget {
  const BookingReviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 148),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackArrow(),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text('Booking Review',style: Styles.textStyle16,),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          RoomCard(),
          SizedBox(height: 24,),
          BookingDetailsCard(),
          SizedBox(height: 24,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12,left: 15,bottom: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payment Method',style: Styles.textStyle16,),
                  SizedBox(height: 8,),
                  Text('You will not be debited until your booking is confirmed',style: Styles.textStyle12.copyWith(color: Color(0xff464646)),),
                 SizedBox(height: 15,),
                  AmenityRow(icon: Icons.check_circle_sharp, text: 'Add card')
                ],
              ),
            ),
          ),
          SizedBox(height: 24,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Discounts Available',style: Styles.textStyle16,),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.red.withOpacity(0.33),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Add promo',
                          style: TextStyle(color: Colors.red),
                        ),
                      )
      
                    ],
                  ),
                ),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal:24,vertical: 12),
                 child: TextFormField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(6),
                     ),
                    prefixIcon: Image(image: AssetImage('assets/ticketOffer.png'),width: 23,height: 17,),
                     hintText: '30% off  10 booking (up to EGP 150)',
                     hintStyle: Styles.textStyle12,
                     suffixIcon: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 8),
                       child: TextButton(
                         onPressed: () {},
                         style: TextButton.styleFrom(
                           backgroundColor: Colors.red.withOpacity(0.33),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20),
                           ),
                         ),
                         child: Text(
                           'Apply',
                           style: TextStyle(color: Colors.red),
                         ),
                       ),
                     )
                   ),
                 ),
               ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                  child: Text('Booking Charges',style: Styles.textStyle16,),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('x1 Day EGP 100.0 x 1 Seat',style: Styles.textStyle14.copyWith(color: Color(0xff464646)),),
                          Text('EGP 100.0',style: Styles.textStyle14.copyWith(color: Color(0xff464646)),),
                        ],
                      ),
                      SizedBox(height: 24,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Due',style: Styles.textStyle14.copyWith(color: Colors.red),),
                          Text('EGP 100.0',style: Styles.textStyle14.copyWith(color: Colors.red),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              width: double.infinity,
                height: 51,
                child: CustomGreenButton(title: 'Book', onPressed: (){})),
          ),
          SizedBox(height: 12,),
          Container(
            alignment: Alignment.center,
            height: 51,
            margin: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text('Cancellation Policy',style: Styles.textStyle16.copyWith(color: Color(0xff455A64)),),
          ), //cancellation button
          SizedBox(height: 16,),
        ]
      ),
    );
  }
}


